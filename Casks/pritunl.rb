cask "pritunl" do
  arch arm: ".arm64"

  version "1.3.3457.61"
  sha256 arm:   "4377c126862e543a11d6117c785af5b43cb60c58dea9cd9550eaad8b1ff2cc78",
         intel: "69ecd51caac1b77398020ac4689031b2037c6610539cdc069726626940c40394"

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
