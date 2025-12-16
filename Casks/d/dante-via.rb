cask "dante-via" do
  version "1.4.1.3"
  sha256 "f7e0a4b22686fd343326e05f2feb9c6d744d9fdb6c06ad1d0f73557a011cd4a9"

  url "https://audinate-software-updates.sgp1.cdn.digitaloceanspaces.com/DanteVia/#{version.major}/#{version.major_minor}/DanteVia-#{version}_macos.dmg",
      verified: "audinate-software-updates.sgp1.cdn.digitaloceanspaces.com/DanteVia/"
  name "Dante Via"
  desc "Connect applications to Dante network"
  homepage "https://www.getdante.com/products/software-essentials/dante-via/"

  livecheck do
    url "https://audinate.jfrog.io/artifactory/ad8-software-updates-prod/DanteVia/appcast/DanteVia-OSX.xml"
    strategy :sparkle
  end

  pkg "Dante Via.pkg"

  # The installer looks for a file at /tmp/.DanteVia_silent_install
  # to determine if it should run in silent mode.
  preflight do
    FileUtils.touch "/tmp/.DanteVia_silent_install"
  end

  uninstall launchctl: [
              "com.audinate.dante.ConMon",
              "com.audinate.dante.DanteVia.DanteViaDaemon",
              "com.audinate.dante.DanteVia.DanteViaLoader",
            ],
            quit:      "com.audinate.DanteViaLoader",
            pkgutil:   [
              "com.audinate.dante.conmon.pkg",
              "com.audinate.dante.pkg.DanteVia",
            ]

  zap trash: [
    "/Library/LaunchDaemons/com.audinate.dante.ConMon.plist",
    "/Library/LaunchDaemons/com.audinate.dante.DanteVia.DanteViaDaemon.plist",
    "/Library/Preferences/com.audinate.dante.install",
    "~/Library/Application Support/dante-software-license",
    "~/Library/Caches/dante-software-license",
    "~/Library/HTTPStorages/com.audinate.DanteViaApp",
    "~/Library/Preferences/com.audinate.DanteViaApp.plist",
    "~/Library/Saved Application State/com.audinate.DanteViaApp.savedState",
  ]
end
