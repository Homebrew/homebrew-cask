cask "mochi" do
  version "1.9.6"
  sha256 "e56fb098a830ecff2d459634eacf541ae7cbf4fd1ee1feb97be99f8137fa07e5"

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
