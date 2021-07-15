cask "mochi" do
  version "1.11.14"
  sha256 "020d49d2b094703b05c3ad68b925ac6b6cccb0e0328936649fa966e2866b1d7d"

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
