cask "fme" do
  arch arm: "aarch64", intel: "x64"
  folder = on_arch_conditional arm: "-aarch64"

  version "2023.1.1.1,23636"
  sha256 arm:   "615b65d0f7989e48910adfeb82ebb31e58a61f03a398ad1430deaed84b57f7fc",
         intel: "25d1228bad97274fdcadc78e38c29ba9129f5be83934986278ac856e26b7e9dd"

  url "https://downloads.safe.com/fme/#{version.major}/macos#{folder}/fme-form-#{version.csv.first}-b#{version.csv.second}-macosx-#{arch}.pkg"
  name "FME Form"
  desc "Platform for integrating spatial data"
  homepage "https://www.safe.com/"

  livecheck do
    url "https://engage.safe.com/api/downloads/"
    regex(/fme[._-]form[._-]v?(\d+(?:\.\d+)+)[._-]b(\d+)[._-]macosx[._-]#{arch}\.pkg/i)
    strategy :json do |json, regex|
      json["official"]["desktop"]["mac"].select { |item| item["url"]&.match?(regex) }
                                        .map { |item| "#{item["url"][regex, 1]},#{item["url"][regex, 2]}" }
    end
  end

  pkg "fme-form-#{version.csv.first}-b#{version.csv.second}-macosx-#{arch}.pkg"

  uninstall pkgutil: [
              "com.safesoftware.pkg.engine.fme-form-#{version.major_minor}-b#{version.csv.second}-macosx-#{arch}",
              "com.safesoftware.pkg.apps.fme-form-#{version.major_minor}-b#{version.csv.second}-macosx-#{arch}",
            ],
            delete:  [
              "/Applications/FME #{version.major_minor}",
              "/Library/FME/#{version.major_minor}",
            ]

  zap trash: [
    "~/Library/Application Support/FME",
    "~/Library/Application Support/FME Desktop Help",
    "~/Library/Application Support/FME Help",
    "~/Library/Application Support/FME Workbench",
  ]
end
