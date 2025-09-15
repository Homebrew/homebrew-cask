cask "dante-controller" do
  version "4.14.3.2"
  sha256 "bb621e0e9efe73f596237c5ab1c9c14026b8d1edf07ae0023f376ae600e07635"

  url "https://audinate-software-updates.sgp1.cdn.digitaloceanspaces.com/DanteController/#{version.major}/#{version.major_minor}/DanteController-#{version}_macos.dmg",
      verified: "audinate-software-updates.sgp1.cdn.digitaloceanspaces.com/DanteController/"
  name "Dante Controller"
  desc "Control inputs and outputs on a Dante network"
  homepage "https://www.getdante.com/products/software-essentials/dante-controller/"

  livecheck do
    url "https://audinate.jfrog.io/artifactory/ad8-software-updates-prod/DanteController/appcast/DanteController-OSX.xml"
    strategy :sparkle
  end

  auto_updates true

  pkg "DanteController.pkg"

  uninstall launchctl: [
              "com.audinate.dante.ConMon",
              "com.audinate.dante.DanteUpdateHelper",
            ],
            pkgutil:   [
              "com.audinate.dante.conmon.pkg",
              "com.audinate.dante.pkg.DanteActivator",
              "com.audinate.dante.pkg.DanteActivatorLegacy",
              "com.audinate.dante.pkg.DanteController",
              "com.audinate.dante.pkg.DanteControllerPackage",
              "com.audinate.dante.pkg.DanteUpdateHelper",
              "com.audinate.dante.pkg.DanteUpdateHelperDB",
              "com.audinate.dante.pkg.DanteUpdater",
            ]

  zap trash: [
    "~/Library/Application Support/Dante Controller",
    "~/Library/Preferences/com.audinate.dante.controller.plist",
    "~/Library/Saved Application State/com.audinate.dante.DanteController.savedState",
  ]
end
