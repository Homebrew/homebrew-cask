cask "radial" do
  version "4.1.0"
  sha256 :no_check

  url "https://radial.appverge.net/downloads/Radial.dmg"
  name "Radial"
  desc "Gesture-based launcher for apps, text snippets, and scripts"
  homepage "https://radial.appverge.net/"

  auto_updates true
  depends_on macos: ">= :sequoia"

  livecheck do
    url "https://radial.appverge.net/appcast.xml"
    strategy :sparkle
  end

  app "Radial.app"

  zap trash: [
    "~/Library/Caches/dk.FirstForm.Radial",
    "~/Library/HTTPStorages/dk.FirstForm.Radial",
    "~/Library/Preferences/dk.FirstForm.Radial.plist",
  ]
end
