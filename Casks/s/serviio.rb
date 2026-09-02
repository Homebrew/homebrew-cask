cask "serviio" do
  version "2.5"
  sha256 "a34474a502ee2e3ea4cbc77ee1326bc1dc6d7d66b7609ca983c2f34c2ac13a9f"

  url "https://download.serviio.org/releases/serviio-#{version}-osx.tar.gz"
  name "Serviio"
  desc "Media server"
  homepage "https://serviio.org/"

  livecheck do
    url "https://www.serviio.org/download"
    regex(%r{href=.*?/serviio-(\d+(?:\.\d+)+)-osx\.t}i)
  end

  depends_on :macos

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
