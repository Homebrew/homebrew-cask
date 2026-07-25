cask "scratch" do
  version "3.32.0"
  sha256 "e28ec141cd34c2976600923a63d1d663329c5819798f69e0dd389e92c5339f1f"

  url "https://downloads.scratch.mit.edu/desktop/Scratch%20#{version}.dmg"
  name "Scratch"
  desc "Programmes interactive stories, games, and animations"
  homepage "https://scratch.mit.edu/download"

  livecheck do
    url "https://downloads.scratch.mit.edu/desktop/Scratch.dmg"
    strategy :header_match
  end

  depends_on macos: :monterey

  app "Scratch #{version.major}.app"

  zap trash: [
    "~/Library/Application Support/Scratch",
    "~/Library/Preferences/edu.mit.scratch.scratch-desktop.plist",
  ]
end
