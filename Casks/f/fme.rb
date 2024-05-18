cask "fme" do
  arch arm: "aarch64", intel: "x64"
  folder = on_arch_conditional arm: "-aarch64"

  version "2024.0.2.1,24217"
  sha256 arm:   "10937dfe5b8ac91ddd33fc6c5bbed0542297a5c72a54ed5e110906f3ff6bfdaf",
         intel: "bc2dd83881ae80dfe721445ad911db847792055eb611bd78879279590b582073"

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
              "com.safesoftware.pkg.apps.fme-form-#{version.major_minor}-b#{version.csv.second}-macosx-#{arch}",
              "com.safesoftware.pkg.engine.fme-form-#{version.major_minor}-b#{version.csv.second}-macosx-#{arch}",
            ],
            delete:  [
              "/Applications/FME #{version.major_minor}",
              "/Library/FME/#{version.major_minor}",
            ]

  zap trash: [
    "~/Library/Application Support/FME Desktop Help",
    "~/Library/Application Support/FME Help",
    "~/Library/Application Support/FME Workbench",
    "~/Library/Application Support/FME",
  ]
end
