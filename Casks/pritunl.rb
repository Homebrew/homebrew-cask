cask "pritunl" do
  arch arm: ".arm64"

  version "1.3.3584.5"
  sha256 arm:   "165fd015b8409d77e0842eb6ac6fb0a0c22f80651e2bce730c6d00751dcb75eb",
         intel: "ec9b02538df425903c4eff89aefe1bb6c3d64018245668b9b62887c2e5e3bc1e"

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
