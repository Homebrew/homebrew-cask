cask "pritunl" do
  arch arm: ".arm64"

  version "1.3.3467.51"
  sha256 arm:   "4b91a902f3be2e674d4533d9d26a50e5463e0fd9164f4d3b07a271c437ad2652",
         intel: "486bd032afec45813c51a48677d6bbed2dc9f9a6d4f7e7cb60257fef7bc991be"

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
