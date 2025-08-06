cask "scratch" do
  version "3.31.1"
  sha256 "97367a199a00f98965c826cda6cc019285affa097f700a9af09c38697b64863f"

  url "https://downloads.scratch.mit.edu/desktop/Scratch%20#{version}.dmg"
  name "Scratch"
  desc "Programmes interactive stories, games, and animations"
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
