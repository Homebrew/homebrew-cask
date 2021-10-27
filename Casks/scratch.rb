cask "scratch" do
  version "3.26.0"
  sha256 "8a25afb528c2de7206ef4f1493ed8ebc78335e7ae9be5659bf7c339c8554bef9"

  url "https://downloads.scratch.mit.edu/desktop/Scratch%20#{version}.dmg"
  name "Scratch"
  desc "Programs interactive stories, games, and animations"
  homepage "https://scratch.mit.edu/download"

  livecheck do
    url "https://downloads.scratch.mit.edu/desktop/Scratch.dmg"
    strategy :header_match
  end

  depends_on macos: ">= :high_sierra"

  app "Scratch #{version.major}.app"

  zap trash: [
    "~/Library/Application Support/Scratch",
    "~/Library/Preferences/edu.mit.scratch.scratch-desktop.plist",
  ]
end
