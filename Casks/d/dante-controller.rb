cask "dante-controller" do
  arch arm: "arm64", intel: "x64"
  arch_folder = on_arch_conditional arm: "apple_silicon/"
  livecheck_arch = on_arch_conditional arm: "silicon", intel: "intel"

  version "4.17.0.15"
  sha256 arm:   "fbacaf6791151dff666d90c0234e4dad2265bc7510de0e25191bf44fd0f37012",
         intel: "6ad4a30091bb1b670ec076c6b06db7ecd13b1443aa6123db3cfe1953672b0226"

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
