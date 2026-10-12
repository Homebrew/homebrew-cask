cask "pritunl" do
  version "1.4.4777.90"
  sha256 "bd0d77c08d64f4ed9e6c6c4ead8a689e9c2cec5c397bbb89e89953ccd5c2c66f"

  url "https://github.com/pritunl/pritunl-client-electron/releases/download/#{version}/Pritunl.pkg.zip"
  name "Pritunl"
  desc "OpenVPN client"
  homepage "https://client.pritunl.com/"

  depends_on :macos

  pkg "Pritunl#{arch}.pkg"

  uninstall launchctl: [
              "com.pritunl.client",
              "com.pritunl.service",
            ],
            signal:    ["TERM", "com.electron.pritunl"],
            pkgutil:   "com.pritunl.pkg.Pritunl",
            delete:    "/Applications/Pritunl.app"

  zap trash: [
    "~/Library/Application Support/pritunl",
    "~/Library/Caches/pritunl",
    "~/Library/Preferences/com.electron.pritunl*",
  ]
end
