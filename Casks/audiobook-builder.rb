cask "audiobook-builder" do
  version "2.1.3"
  sha256 "330f1b7e28372800ef2b5880e531df59afe0a4ad9dffeab8cd2d93ab268f7f76"

  url "https://www.splasm.com/downloads/audiobookbuilder/Audiobook%20Builder%20#{version}.dmg"
  name "Audiobook Builder"
  desc "Turn audio CDs and files into audiobooks"
  homepage "https://www.splasm.com/audiobookbuilder/"

  livecheck do
    url :homepage
    regex(/Version\s*(\d+(?:\.\d+)*)/i)
  end

  depends_on macos: ">= :el_capitan"

  app "Audiobook Builder.app"
end
