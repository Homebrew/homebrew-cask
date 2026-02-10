cask "purei-play" do
  version "0.72"
  sha256 "ad9e03164a5bfe79c99e6d9d8c04db7b706a749eba29b33bef39bb7db2a36f36"

  url "https://purei.org/downloads/play/stable/#{version}/Play.dmg"
  name "Play!"
  desc "PlayStation 2 emulator"
  homepage "https://purei.org/"

  livecheck do
    url "https://purei.org/downloads/play/stable/"
    regex(/href=.*?v?(\d+(?:\.\d+)+)/i)
  end

  app "Play.app"

  zap trash: [
    "~/Library/Preferences/com.virtualapplications.Play.plist",
    "~/Library/Saved Application State/com.virtualapplications.Play.savedState",
  ]
end
