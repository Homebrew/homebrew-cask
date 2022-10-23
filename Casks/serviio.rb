cask "serviio" do
  version "2.3"
  sha256 "02fbf265e42d8fec1052b86c6c2ae0aacc184254e76cffd1384884b37107158d"

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
