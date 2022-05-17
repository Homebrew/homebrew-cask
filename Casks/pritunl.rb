cask "pritunl" do
  arch = Hardware::CPU.intel? ? "" : ".arm64"

  version "1.2.3154.57"

  if Hardware::CPU.intel?
    sha256 "c419e997f27b952a5864d69b0dfc4b880fd8a3c0dd16723f33fde4bdff50445f"
  else
    sha256 "dc67257d989f8b5a962bd3a53d43a1ab6946564b89e3c6c05f333db49a5d0b24"
  end

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
