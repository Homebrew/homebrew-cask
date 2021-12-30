cask "audiobook-builder" do
  version "2.2"
  sha256 "55f1ab319fedeb43ffaa123eb21f937b29d72c3221c8064664e599909769a521"

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
