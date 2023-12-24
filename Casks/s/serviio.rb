cask "serviio" do
  version "2.3.1"
  sha256 "da24966b2d4057afc7c0a4910ad0c37c360573866037712cd488b696244e1a20"

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
              "org.serviio.pkg.ServiioConsole",
              "org.serviio.pkg.Serviio",
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
