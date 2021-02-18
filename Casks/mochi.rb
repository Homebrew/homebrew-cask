cask "mochi" do
  version "1.9.0"
  sha256 "58b5efd9ccf2bacb7a70795d4277be9bce05707434e6a55bc32b829895ddcb3e"

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
