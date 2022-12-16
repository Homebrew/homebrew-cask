cask "nightowl" do
  version "0.3.2,16"
  sha256 :no_check

  url "https://nightowlapp.co/files/NightOwl.dmg"
  name "NightOwl"
  desc "Utility to toggle dark mode"
  homepage "https://nightowlapp.co/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "NightOwl.app"

  zap trash: [
    "~/Library/Caches/com.fuekiin.NightOwl",
    "~/Library/Preferences/com.fuekiin.NightOwl.plist",
  ]
end
