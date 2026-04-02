cask "radial" do
  version "4.1.0"
  sha256 :no_check

  url "https://radial.appverge.net/downloads/Radial.dmg"
  name "Radial"
  desc "Gesture-based launcher for apps, text snippets, and scripts on macOS"
  homepage "https://radial.appverge.net"

  auto_updates true

  depends_on macos: ">= :sequoia"

  app "Radial.app"

  zap trash: [
    "~/Library/Preferences/dk.FirstForm.Radial.plist",
    "~/Library/Caches/dk.FirstForm.Radial",
    "~/Library/HTTPStorages/dk.FirstForm.Radial",
  ]
end
