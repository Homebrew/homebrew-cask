cask "mochi" do
  version "1.12.6"
  sha256 "953f8f26ba3d0b8914482feaa8ecea41708aade513ac75293d9a9b52bd598a60"

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
