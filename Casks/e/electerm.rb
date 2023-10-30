cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.34.39"
  sha256 arm:   "029b24343401dbc1bebb88835c697a29f3adf4a75a01f792535446cd4503ec3f",
         intel: "826c94d566b2cd7518f3baa738bc3cfd8cc8bf4d6579e10d78240d6125c662dd"

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
