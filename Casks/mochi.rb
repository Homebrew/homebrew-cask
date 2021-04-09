cask "mochi" do
  version "1.9.8"
  sha256 "3a7a6a51d2e1c2cb675186029ff5111a76d93c443fc4c2484f57fcadf5527409"

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
