cask "purei-play" do
  version "0.70"
  sha256 "cd9b64eb149cea7e0640aa44498ce5734e273ac2f4388435ac33629b0fe0d8a7"

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
