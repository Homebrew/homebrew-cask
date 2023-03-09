cask "pritunl" do
  arch arm: ".arm64"

  version "1.3.3464.45"
  sha256 arm:   "1f1eb43d4485d5a809bfa5a575ee3b3d257fda6e4e94ed8df6c1265a214e5c50",
         intel: "3d6f96e4e98f6c440cab641595a54ba25aa7eec0a603bce18a9fad4d55aee600"

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
