cask "fme" do
  arch arm:   "aarch64",
       intel: "x64"

  version "2023.0.1,23332"
  sha256 arm:   "6bcb39d4287f751984ede9845dad3c33f3a5c7c8161e966b16ae8eea3a7da0f8",
         intel: "f9bac5931173696d27a65db3e311ecf362444089b198f313fa4536771615c7ee"

  on_arm do
    url "https://downloads.safe.com/fme/#{version.major}/macos-#{arch}/fme-form-#{version.csv.first}-b#{version.csv.second}-macosx-#{arch}.pkg"
  end
  on_intel do
    url "https://downloads.safe.com/fme/#{version.major}/macos/fme-form-#{version.csv.first}-b#{version.csv.second}-macosx-#{arch}.pkg"
  end

  name "FME Form"
  desc "Platform for integrating spatial data"
  homepage "https://www.safe.com/"

  livecheck do
    url "https://engage.safe.com/api/downloads/"
    regex(/fme-form-(\d+(?:\.\d+)+)-b(\d+)-macosx-#{arch}\.pkg/i)
    strategy :json do |json, regex|
      json["official"]["desktop"]["mac"].select { |item| item["url"]&.match?(regex) }
                                        .map { |item| item["url"][regex, 1]+","+item["url"][regex, 2] }
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
