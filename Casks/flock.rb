cask "flock" do
  version "2.2.496"
  sha256 "3b90407b5a83f215c072480d9be73daaade45337fa8c25fcade42e6dd6590fec"

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
