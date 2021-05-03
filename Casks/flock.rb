cask "flock" do
  version "2.2.494"
  sha256 "b41a7776e1f709fed6a2294828504ff4be8b6f97975798323c8bd0ce67325c65"

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
