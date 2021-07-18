cask "mochi" do
  version "1.11.15"
  sha256 "dda7a9545a06e541c243692e7b1d85dc675d0e85567a86988b5244adeddc1c53"

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
