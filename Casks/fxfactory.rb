cask "fxfactory" do
  version "8.0.4,7290"
  sha256 "6178bab8b46d983e596c9f3cad787ef870b8c714db21e750e94b5220e1e671f5"

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
            launchctl: "com.fxfactory.FxFactory.helper",
            delete:    [
              "/Library/Application Support/FxFactory",
              "/Library/LaunchDaemons/com.fxfactory.FxFactory.helper.plist",
              "/Library/PrivilegedHelperTools/com.fxfactory.FxFactory.helper",
            ]

  zap trash: [
    "~/Library/Application Scripts/com.fxfactory.FxFactoryService.pluginkit",
    "~/Movies/Motion Templates.localized",
  ]
end
