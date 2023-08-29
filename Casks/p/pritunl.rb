cask "pritunl" do
  arch arm: ".arm64"

  version "1.3.3637.72"
  sha256 arm:   "9d0db80d67c090b5f2a09c4c0f6d955f31f00a3a09c47e38413ed643cb3dc1e3",
         intel: "40e744d9287d20d1a85c3c585f81c6d55af15f7429207d607e80d70bd5626a3b"

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
