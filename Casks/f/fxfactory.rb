cask "fxfactory" do
  version "8.0.11,7683"
  sha256 "a008c608664e29aaffde514ad86447dd9bef23031fb6da6029c3b4b1b52f408e"

  url "https://fxfactory.s3.amazonaws.com/noiseindustries/fxfactory/FxFactory-#{version.csv.first}-#{version.csv.second}.zip",
      verified: "fxfactory.s3.amazonaws.com/noiseindustries/"
  name "FxFactory"
  desc "Browse, install and purchase effects and plugins from a huge catalog"
  homepage "https://fxfactory.com/"

  livecheck do
    url "https://fxfactory.com/download/"
    regex(/FxFactory[._-]v?(\d+(?:\.\d+)+)[._-](\d+).zip/i)
    strategy :page_match do |page, regex|
      match = page.match(regex)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  pkg "Install FxFactory #{version.csv.first}.pkg"

  uninstall pkgutil:   "com.fxfactory.pkg",
            quit:      "com.fxfactory.Fxfactory",
            launchctl: "com.fxfactory.FxFactory.helper",
            delete:    [
              "/Library/Application Support/FxFactory",
              "/Library/LaunchDaemons/com.fxfactory.FxFactory.helper.plist",
              "/Library/PrivilegedHelperTools/com.fxfactory.FxFactory.helper",
            ]

  zap trash: [
    "~/Library/Application Scripts/com.fxfactory.FxFactoryService.pluginkit",
    "~/Library/Preferences/com.fxfactory.FxFactory.plist",
    "~/Movies/Motion Templates.localized",
  ]
end
