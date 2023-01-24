cask "pritunl" do
  arch arm: ".arm64"

  version "1.3.3420.31"
  sha256 arm:   "72b36e8819132b09e67e5dff8ab7bd7f75240c8f3a9b0f3943fc7eac9e5654d0",
         intel: "4bcd54064d58885fb0f88cfddbf317bc69317892dd90c4a16bda6f7da04f5413"

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
