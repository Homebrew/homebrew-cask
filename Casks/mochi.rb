cask "mochi" do
  version "1.9.1"
  sha256 "08c747c0f115a983978797d8e22096c677c1e5251a48d69bf7eee78787551e16"

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
