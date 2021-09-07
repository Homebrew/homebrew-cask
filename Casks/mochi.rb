cask "mochi" do
  version "1.11.19"
  sha256 "ae3454906f60d45edc6cb23d82b2fa292b2fbb3b4e8d15bf1df9cc91a8ae5558"

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
