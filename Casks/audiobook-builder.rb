cask "audiobook-builder" do
  version "2.2.2"
  sha256 "5424acaf9ac2142d77626146e283ee823b4f82a9dd7afb1cb367ddd4c1aaf153"

  url "https://www.splasm.com/downloads/audiobookbuilder/Audiobook%20Builder%20#{version}.dmg"
  name "Audiobook Builder"
  desc "Turn audio CDs and files into audiobooks"
  homepage "https://www.splasm.com/audiobookbuilder/"

  livecheck do
    url :homepage
    regex(/Version\s*(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :el_capitan"

  app "Audiobook Builder.app"
end
