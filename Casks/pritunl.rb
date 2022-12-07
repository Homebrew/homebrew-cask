cask "pritunl" do
  arch arm: ".arm64"

  version "1.3.3373.6"
  sha256 arm:   "9aab9b10159612136e4c7ef34d7414ce883e0c7de3efa13eee983e3cad162ee0",
         intel: "298bd7809ff057162a08c9c0172eb4cf3f0b72831f926bd9fbbcdd772235cd77"

  url "https://github.com/pritunl/pritunl-client-electron/releases/download/#{version}/Pritunl#{arch}.pkg.zip",
      verified: "github.com/pritunl/pritunl-client-electron/"
  name "Pritunl"
  desc "OpenVPN client"
  homepage "https://client.pritunl.com/"

  pkg "Pritunl#{arch}.pkg"

  uninstall pkgutil:   "com.pritunl.pkg.Pritunl",
            launchctl: [
              "com.pritunl.client",
              "com.pritunl.service",
            ],
            signal:    ["TERM", "com.electron.pritunl"],
            delete:    "/Applications/Pritunl.app"

  zap trash: [
    "~/Library/Application Support/pritunl",
    "~/Library/Caches/pritunl",
    "~/Library/Preferences/com.electron.pritunl*",
  ]
end
