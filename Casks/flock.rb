cask "flock" do
  version "2.2.502"
  sha256 "4230bf52e3e532f1b4faf0d8e6c3e4dbf034f27dc5bcccd65f3a1276b1f55eca"

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
