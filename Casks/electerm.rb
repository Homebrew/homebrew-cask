cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.23.4"
  sha256 arm:   "a7443e26e6a2f6c279fdc0b92150f02185ed458e28bf13e8eddd410e07488dae",
         intel: "2fc99e2efebe2d3341282d0122e09e88df62223ae7f9d92a4d77b8d0275c8149"

  url "https://github.com/electerm/electerm/releases/download/v#{version}/electerm-#{version}-mac-#{arch}.dmg"
  name "electerm"
  desc "Terminal/ssh/sftp client"
  homepage "https://github.com/electerm/electerm/"

  auto_updates true

  app "electerm.app"
  binary "#{appdir}/electerm.app/Contents/MacOS/electerm"

  zap trash: [
    "~/Library/Application Support/electerm",
    "~/Library/Logs/electerm",
    "~/Library/Preferences/org.electerm.electerm.plist",
    "~/Library/Saved Application State/org.electerm.electerm.savedState",
  ]
end
