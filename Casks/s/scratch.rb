cask "scratch" do
  version "3.32.1"
  sha256 "a0184df50e26ba3fbffd665b972108dfa3f0d7ce07b3fa7096a7c6749af3ff29"

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
