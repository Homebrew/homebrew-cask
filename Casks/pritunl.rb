cask "pritunl" do
  arch = Hardware::CPU.intel? ? "" : ".arm64"

  version "1.2.3124.65"

  if Hardware::CPU.intel?
    sha256 "518a4339380f54be522e686ef57efc8d3762e0b34911dae58a7aa60fb21e4c10"
  else
    sha256 "16a41e8ab9b034c6d59854de811ae8b753017ea2ddcf567b5850f3f08785e591"
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
