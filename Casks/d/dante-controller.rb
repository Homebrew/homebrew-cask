cask "dante-controller" do
  arch arm: "arm64", intel: "x64"
  arch_folder = on_arch_conditional arm: "apple_silicon/"
  livecheck_arch = on_arch_conditional arm: "silicon", intel: "intel"

  version "4.17.1.1"
  sha256 arm:   "17265796372d024dc9e856d8671c734de6f295a15319d490379e5ef9ecf40bb8",
         intel: "fea21d0b31820dcf21613eb9e997f325c43a6021f261d2a2d8c9cf95232e1f2b"

  url "https://audinate-software-updates.sgp1.cdn.digitaloceanspaces.com/DanteController/#{version.major}/#{version.major_minor}/#{arch_folder}DanteController-#{version}-macos-#{arch}.dmg",
      verified: "audinate-software-updates.sgp1.cdn.digitaloceanspaces.com/DanteController/"
  name "Dante Controller"
  desc "Control inputs and outputs on a Dante network"
  homepage "https://www.getdante.com/products/software-essentials/dante-controller/"

  livecheck do
    url "https://audinate.jfrog.io/artifactory/ad8-software-updates-prod/DanteController/appcast/DanteController-apple_#{livecheck_arch}.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

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
