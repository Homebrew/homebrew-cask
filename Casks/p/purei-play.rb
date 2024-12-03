cask "purei-play" do
  version "0.68"
  sha256 "94570225a6d1519f5062ad45f9c3eb39fc4ec4108fbf38579ac47a4ea8e7e6b6"

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
