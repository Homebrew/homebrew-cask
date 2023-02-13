cask "pritunl" do
  arch arm: ".arm64"

  version "1.3.3441.64"
  sha256 arm:   "3294586767912b9e18a0ac18a5f8de2db01b47ddcbc171d22b2f14dc0473d3ba",
         intel: "d8d86fd32a2dc9d2c705a4e8f0e05387eef7fd268297d7fcbfd7ae7d29789700"

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
