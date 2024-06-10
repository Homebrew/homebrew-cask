cask "fxfactory" do
  version "8.0.16,7877"
  sha256 "59967d2ae46570dafa7ab4bf680e068c0b26ec909e70046e2491d61b7dd263b7"

  url "https://fxfactory.s3.amazonaws.com/noiseindustries/fxfactory/FxFactory-#{version.csv.first}-#{version.csv.second}.zip",
      verified: "fxfactory.s3.amazonaws.com/noiseindustries/"
  name "FxFactory"
  desc "Browse, install and purchase effects and plugins from a huge catalogue"
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

  depends_on macos: ">= :monterey"

  pkg "Install FxFactory #{version.csv.first}.pkg"

  uninstall launchctl: "com.fxfactory.FxFactory.helper",
            quit:      "com.fxfactory.FxFactory",
            pkgutil:   "com.fxfactory.pkg",
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
