cask "mochi" do
  version "1.9.3"
  sha256 "68a5d4064c327daab7740b17b0269281099ff997c0bcbb692b022e954190ae7b"

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
