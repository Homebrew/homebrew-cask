cask "mochi" do
  version "1.9.10"
  sha256 "138367123d62cdb3a03a5fd425291f7d1d429d0c2a1cb25c9b39242cf8d19480"

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
