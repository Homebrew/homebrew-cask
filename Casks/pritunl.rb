cask "pritunl" do
  if Hardware::CPU.intel?
    if MacOS.version <= :catalina
      version "1.2.2615.73"
      sha256 "275f8498fb736a0a1ddebcbfcb6f03e82b8eb4fedf9b7eb61b0e306cb6de4a71"
    else
      version "1.2.2737.2"
      sha256 "f46a17a612a5b7c051cbacbc19d35578b35a36cf6dae736621cea2b22b9b1403"
    end

    url "https://github.com/pritunl/pritunl-client-electron/releases/download/#{version}/Pritunl.pkg.zip",
        verified: "github.com/pritunl/pritunl-client-electron/"

    pkg "Pritunl.pkg"
  else
    version "1.2.2737.2"
    sha256 "2ca2f3b31d78177a591c9166990017521ac3f283b032933c1983ffdbde21475b"

    url "https://github.com/pritunl/pritunl-client-electron/releases/download/#{version}/Pritunl.arm64.pkg.zip",
        verified: "github.com/pritunl/pritunl-client-electron/"

    pkg "Pritunl.arm64.pkg"
  end

  appcast "https://github.com/pritunl/pritunl-client-electron/releases.atom"
  name "Pritunl"
  desc "OpenVPN client"
  homepage "https://client.pritunl.com/"

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
