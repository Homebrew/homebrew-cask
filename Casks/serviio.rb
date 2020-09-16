cask "serviio" do
  version "2.1"
  sha256 "2a6d948c00205c5c4cf60127ed94a8e0e6965a145e5162b298f3108492f73cae"

  url "https://download.serviio.org/releases/serviio-#{version}-osx.tar.gz"
  appcast "https://www.serviio.org/download"
  name "Serviio"
  homepage "https://serviio.org/"

  pkg "Serviio-#{version}.pkg"

  uninstall pkgutil:   [
    "org.serviio.pkg.autostart",
    "org.serviio.pkg.JRE",
    "org.serviio.pkg.ServiioConsole",
    "org.serviio.pkg.Serviio",
  ],
            launchctl: "org.serviio.server"

  zap trash: [
    "/Library/Application Support/Serviio",
    "/private/var/log/serviio",
    "~/Library/Application Support/CrashReporter/Serviio-Console Helper_*.plist",
    "~/Library/Application Support/Serviio-Console-Wrapper",
    "~/Library/Caches/Serviio-Console-Wrapper",
    "~/Library/Preferences/org.serviio.serviio-web-console.plist",
    "~/Library/Saved Application State/org.serviio.serviio-web-console.savedState",
  ]
end
