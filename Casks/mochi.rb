cask "mochi" do
  version "1.11.3"
  sha256 "991827a69a3b5325af28f9a8d34fb37a24ad2b2a9401387b35ebb8c2f628e867"

  url "https://mochi.cards/releases/Mochi-#{version}.dmg"
  name "Mochi"
  desc "Study notes and flashcards using spaced repetition"
  homepage "https://mochi.cards/"

  livecheck do
    url :homepage
    strategy :page_match
    regex(%r{href=.*?/Mochi-(\d+(?:\.\d+)*)\.dmg}i)
  end

  app "Mochi.app"
end
