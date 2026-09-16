cask "pritunl" do
  version "1.4.4752.50"
  sha256 "afe32dba27c3ca669b95a0bac2147a18465b85384d7122c6900a4a077988ad27"

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
