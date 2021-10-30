cask "audiobook-builder" do
  version "2.1.4"
  sha256 "beb51287843d9960171f64c5ed983c370c616f84b83b0c48a7e398bf6a0b25e8"

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
