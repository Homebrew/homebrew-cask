cask "pritunl" do
  version "1.2.2549.5"
  sha256 "193e2ec407aab56b1f53ece4be182fb4442dc9b180de94a68d3d5f1beb64065a"

  # github.com/pritunl/pritunl-client-electron/ was verified as official when first introduced to the cask
  url "https://github.com/pritunl/pritunl-client-electron/releases/download/#{version}/Pritunl.pkg.zip"
  appcast "https://github.com/pritunl/pritunl-client-electron/releases.atom"
  name "Pritunl OpenVPN Client"
  homepage "https://client.pritunl.com/"

  pkg "Pritunl.pkg"

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
