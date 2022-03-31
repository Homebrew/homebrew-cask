cask "pritunl" do
  arch = Hardware::CPU.intel? ? "" : ".arm64"

  version "1.2.3121.61"

  if Hardware::CPU.intel?
    sha256 "1af01c1df8e224e17fad212943eab136bf1aca83b00951a7aa24bb0d8f1fac73"
  else
    sha256 "46e261a3b69bb96428909d03d9bd413a498c9a9e41e62691f3032d82e6174ca1"
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
