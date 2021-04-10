cask "audiobook-builder" do
  version "2.1.2"
  sha256 "acf96a39171df286a039e88e4e9b9fa20b7fc10c6ab96ed90c308e8cfdc99cd9"

  url "https://www.splasm.com/downloads/audiobookbuilder/Audiobook%20Builder%20#{version}.dmg"
  name "Audiobook Builder"
  desc "Turn audio CDs and files into audiobooks"
  homepage "https://www.splasm.com/audiobookbuilder/"

  livecheck do
    url "https://www.splasm.com/audiobookbuilder/"
    strategy :page_match
    regex(/Version\s*(\d+(?:\.\d+)*)/i)
  end

  app "Audiobook Builder.app"
end
