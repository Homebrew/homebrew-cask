cask "pritunl" do
  version "1.2.2737.2"

  if Hardware::CPU.intel?
    sha256 "f46a17a612a5b7c051cbacbc19d35578b35a36cf6dae736621cea2b22b9b1403"

    url "https://github.com/pritunl/pritunl-client-electron/releases/download/#{version}/Pritunl.pkg.zip",
        verified: "github.com/pritunl/pritunl-client-electron/"

    pkg "Pritunl.pkg"
  else
    sha256 "0ca6c97928860813ee90536bc64b3f69336ee195890d5eecca23dcc8a2e4f754"

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
