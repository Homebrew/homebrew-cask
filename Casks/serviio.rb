cask "serviio" do
  version "2.2"
  sha256 "468afcb37390f7e9b3e7207922dae5ecd7f84296837a22905891e08191bfe507"

  url "https://download.serviio.org/releases/serviio-#{version}-osx.tar.gz"
  name "Serviio"
  homepage "https://serviio.org/"

  livecheck do
    url "https://www.serviio.org/download"
    strategy :page_match
    regex(%r{href=.*?/serviio-(\d+(?:\.\d+)*)-osx\.tar\.gz}i)
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
