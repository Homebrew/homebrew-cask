cask "mochi" do
  version "1.8.3"
  sha256 "c387280bd70ce7e9ed50ac5713d4b3f30420c2a4b3db126c64be5fe49175bdf1"

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
