cask "mochi" do
  version "1.11.4"
  sha256 "a719a80759302d62668703a84a547cd0da2383b265f26dd400aa5c2614b46f13"

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
