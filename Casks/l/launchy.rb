cask "launchy" do
  version "2.5"
  sha256 "9a1112261c7f00d8600c2bf52abc98d5fabf89af56d5881a807b403b7c94e288"

  url "https://www.launchy.net/downloads/mac/Launchy#{version}.dmg"
  name "Launchy"
  desc "Utility desktop shortcut utility"
  homepage "https://www.launchy.net/"

  disable! date: "2024-07-14", because: "is 32-bit only"

  app "Launchy.app"
end
