cask "audiobook-builder" do
  version "2.1.4"
  sha256 "f69018b3016e775fce34f445109982b27ef7b7d999b358eb3610a76309b31bc1"

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
