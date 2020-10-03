cask "flock" do
  version "2.2.449"
  sha256 "a8a08b4f464b870bf3d61f79a04f9ce09f98b8bedf5a4dfe8d4382cb806f4b29"

  # flock.co/ was verified as official when first introduced to the cask
  url "https://updates.flock.co/fl_mac_electron/Flock-macOS-#{version}.dmg"
  appcast "https://bingo.flock.co/mac_electron.php"
  name "Flock"
  desc "Business messaging and team collaboration app"
  homepage "https://flock.com/"

  app "Flock.app"
end
