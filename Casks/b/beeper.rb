cask "beeper" do
  arch arm: "arm64", intel: "x64"

  version "3.90.16"
  sha256 :no_check

  url "https://download.beeper.com/mac/dmg/#{arch}"
  name "Beeper"
  desc "Universal chat app powered by Matrix"
  homepage "https://www.beeper.com/"

  livecheck do
    url :url
    regex(/Beeper\D*?(\d+(?:\.\d+)+)/i)
    strategy :header_match
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Beeper.app"

  zap trash: [
    "~/Library/Application Support/Beeper",
    "~/Library/Caches/im.beeper",
    "~/Library/Caches/im.beeper.ShipIt",
    "~/Library/Preferences/im.beeper.plist",
    "~/Library/Saved Application State/im.beeper.savedState",
  ]
end
