cask "pritunl" do
  if MacOS.version <= :catalina
    version "1.2.2615.73"
    sha256 "275f8498fb736a0a1ddebcbfcb6f03e82b8eb4fedf9b7eb61b0e306cb6de4a71"
  else
    version "1.2.2653.1"
    sha256 "af0170b1641ea9cdb79f030c0e15a8cf00eddf43d906fd68b5566cea4bc3111c"
  end

  url "https://github.com/pritunl/pritunl-client-electron/releases/download/#{version}/Pritunl.pkg.zip",
      verified: "github.com/pritunl/pritunl-client-electron/"
  appcast "https://github.com/pritunl/pritunl-client-electron/releases.atom"
  name "Pritunl"
  desc "OpenVPN client"
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
