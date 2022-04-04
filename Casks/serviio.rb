cask "serviio" do
  version "2.2.1"
  sha256 "3544bdf12d9b6825c26f8c259055815b875ea7d4c741d87b19b71e7d17dc8d9c"

  url "https://download.serviio.org/releases/serviio-#{version}-osx.tar.gz"
  name "Serviio"
  desc "Media server"
  homepage "https://serviio.org/"

  livecheck do
    url "https://www.serviio.org/download"
    regex(%r{href=.*?/serviio-(\d+(?:\.\d+)+)-osx\.t}i)
  end

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
