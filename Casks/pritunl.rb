cask "pritunl" do
  arch arm: ".arm64"

  version "1.3.3343.50"
  sha256 arm:   "62f104e1b9ea7b0dfbfd4f22705b94c7285705ee61b92744932a28e9b108438a",
         intel: "a18d51b914c22b2c4b1dcaacf6ca2f7770d334a3ee49282173bb143b4f0e772a"

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
