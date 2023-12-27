cask "leapp" do
  arch arm: "-arm64"

  version "0.23.1"
  sha256 arm:   "78d0d656c2cdb93084ce8bd881be28bcd2e76132860c5676ada4615052d8b53a",
         intel: "dffad26ba7dfb0b130b63952be718dafd09e54651b25c40945a7e8fc0c99ecac"

  url "https://asset.noovolari.com/#{version}/Leapp-#{version}#{arch}.dmg",
      verified: "asset.noovolari.com/"
  name "Leapp"
  desc "Cloud credentials manager"
  homepage "https://www.leapp.cloud/"

  livecheck do
    url "https://asset.noovolari.com/latest/latest-mac.yml"
    strategy :electron_builder
  end

  app "Leapp.app"

  zap trash: [
    "~/.Leapp",
    "~/Library/Application Support/Leapp",
    "~/Library/Logs/Leapp",
    "~/Library/Preferences/com.leapp.app.plist",
    "~/Library/Saved Application State/com.leapp.app.savedState",
  ]
end
