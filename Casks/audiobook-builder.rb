cask "audiobook-builder" do
  version "2.2.1"
  sha256 "04840ce3c8425e1e157533e59c628dea45b086a9f99212c38bc9e6e77a7a2ec9"

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
