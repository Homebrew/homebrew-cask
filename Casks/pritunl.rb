cask "pritunl" do
  arch = Hardware::CPU.intel? ? "" : ".arm64"

  version "1.2.3128.59"

  if Hardware::CPU.intel?
    sha256 "55e02a03f8bc4b5acc3214e91976095eae5035b8e0b276774c7df89d3a759063"
  else
    sha256 "30cd469ee1a63ebbdaf724b771d6b029d24c615a82f4a6269870fefa6525de8a"
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
