cask "serviio" do
  version "2.4"
  sha256 "20034345e81df70d5199376f6de70b8201cbb48b21b3e6507ab999d20450d1be"

  url "https://download.serviio.org/releases/serviio-#{version}-osx.tar.gz"
  name "Serviio"
  desc "Media server"
  homepage "https://serviio.org/"

  livecheck do
    url "https://www.serviio.org/download"
    regex(%r{href=.*?/serviio-(\d+(?:\.\d+)+)-osx\.t}i)
  end

  pkg "Serviio-#{version}.pkg"

  uninstall launchctl: "org.serviio.server",
            pkgutil:   [
              "org.serviio.pkg.autostart",
              "org.serviio.pkg.JRE",
              "org.serviio.pkg.Serviio",
              "org.serviio.pkg.ServiioConsole",
            ]

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
