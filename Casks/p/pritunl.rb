cask "pritunl" do
  version "1.4.4744.47"
  sha256 "de71c6fa41fe00e50eeac0e57fe1fdb3b9409b68afcfcb77f722b7b6c3b80d01"

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
