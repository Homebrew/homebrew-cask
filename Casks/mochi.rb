cask "mochi" do
  version "1.9.9"
  sha256 "d687b852e812888e492ec16e9dfbb6091dccc821070b3fbcd0786d1fdceb2aa9"

  url "https://mochi.cards/releases/Mochi-#{version}.dmg"
  name "Mochi"
  homepage "https://mochi.cards/"

  livecheck do
    url :homepage
    strategy :page_match
    regex(%r{href=.*?/Mochi-(\d+(?:\.\d+)*)\.dmg}i)
  end

  app "Mochi.app"
end
