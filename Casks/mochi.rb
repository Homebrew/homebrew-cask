cask "mochi" do
  version "1.11.5"
  sha256 "09b5b029eb996ceb13996e4fa9f649bdd2b5168d6122f4926a763005366b9ebd"

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
