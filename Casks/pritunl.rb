cask "pritunl" do
  arch = Hardware::CPU.intel? ? "" : ".arm64"

  version "1.2.3233.75"

  if Hardware::CPU.intel?
    sha256 "ee5be52d05711df1506f5321939c20c324a1aa333b83d7b09b592bc50d5fe76e"
  else
    sha256 "81b469fab1ddff57ff08bd53cc64eb0315c4c64bb3b57f24875253eecfffbf41"
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
