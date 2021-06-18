cask "flock" do
  version "2.2.498"
  sha256 "8fc88f10e3a891271a1f06fa4ebb8021180ccdce559dfe5f19c57a8e68e030d3"

  url "https://updates.flock.co/fl_mac_electron/Flock-macOS-#{version}.dmg",
      verified: "flock.co/"
  name "Flock"
  desc "Business messaging and team collaboration app"
  homepage "https://flock.com/"

  livecheck do
    url "https://bingo.flock.co/dl.php?client=mac"
    strategy :header_match
  end

  app "Flock.app"
end
