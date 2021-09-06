cask "mochi" do
  version "1.11.18"
  sha256 "0d5b192851ec68321350adb896cc50de8825f6e68f5dc9bbd4f858ee24a91979"

  url "https://mochi.cards/releases/Mochi-#{version}.dmg"
  name "Mochi"
  desc "Study notes and flashcards using spaced repetition"
  homepage "https://mochi.cards/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/Mochi[._-]?v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  app "Mochi.app"
end
