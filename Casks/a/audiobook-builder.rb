cask "audiobook-builder" do
  version "2.2.8"
  sha256 "756953a222f84c917a73288e9f210e908fdaf3e3f4b689164f40afb547cd8c0b"

  url "https://www.splasm.com/downloads/audiobookbuilder/Audiobook%20Builder%20#{version}.dmg"
  name "Audiobook Builder"
  desc "Turn audio CDs and files into audiobooks"
  homepage "https://www.splasm.com/audiobookbuilder/"

  livecheck do
    url "https://www.splasm.com/audiobookbuilder/update.html"
    regex(/class=.*["' >]Audiobook\sBuilder\s?(\d+(?:\.\d+)+)</i)
  end

  depends_on macos: ">= :el_capitan"

  app "Audiobook Builder.app"
end
