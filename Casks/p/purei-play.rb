cask "purei-play" do
  version "0.65"
  sha256 "721d1574f8e262b6a75a035730c5436c9138d9b8cd7bbcddbfba2d0b4573b2fa"

  url "https://purei.org/downloads/play/stable/#{version}/Play.dmg"
  name "Play!"
  desc "PlayStation 2 emulator"
  homepage "https://purei.org/"

  livecheck do
    url "https://purei.org/downloads/play/stable/"
    regex(/href=.*?v?(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :catalina"

  app "Play.app"

  zap trash: [
    "~/Library/Preferences/com.virtualapplications.Play.plist",
    "~/Library/Saved Application State/com.virtualapplications.Play.savedState",
  ]
end
