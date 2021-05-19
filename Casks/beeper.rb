cask "beeper" do
  version :latest
  sha256 :no_check

  if Hardware::CPU.intel?
    url "https://download.beeper.com/mac"
  else
    url "https://download.beeper.com/mac/dmg/arm64"
  end

  name "Beeper"
  desc "Universal chat app unifying 15 different chat networks"
  homepage "https://www.beeper.com/"

  app "Beeper.app"

  zap trash: [
    "~/Library/Application Support/Beeper",
    "~/Library/Caches/im.beeper",
    "~/Library/Caches/im.beeper.ShipIt",
    "~/Library/Preferences/im.beeper.plist",
    "~/Library/Saved Application State/im.beeper.savedState",
  ]
end
