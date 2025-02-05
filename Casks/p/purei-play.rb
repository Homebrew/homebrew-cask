cask "purei-play" do
  version "0.69"
  sha256 "fd1934e81002616eb50064a713108acfbc2310c132c3bd3c0b352b999b4ddac4"

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
