cask "font-nebula-sans" do
  version "1.010"
  sha256 "a9b56ef15e24b6e8195af7457cc75f714ecf5501fc3c20a69f546c8f589e7bdb"

  url "https://www.nebulasans.com/download/NebulaSans-#{version}.zip"
  name "Nebula Sans"
  homepage "https://www.nebulasans.com/"

  livecheck do
    url :homepage
    regex(/href=.*?NebulaSans[._-]v?(\d+(?:\.\d+)+)\.zip/i)
  end

  font "OTF/NebulaSans-Black.otf"
  font "OTF/NebulaSans-BlackItalic.otf"
  font "OTF/NebulaSans-Bold.otf"
  font "OTF/NebulaSans-BoldItalic.otf"
  font "OTF/NebulaSans-Book.otf"
  font "OTF/NebulaSans-BookItalic.otf"
  font "OTF/NebulaSans-Light.otf"
  font "OTF/NebulaSans-LightItalic.otf"
  font "OTF/NebulaSans-Medium.otf"
  font "OTF/NebulaSans-MediumItalic.otf"
  font "OTF/NebulaSans-Semibold.otf"
  font "OTF/NebulaSans-SemiboldItalic.otf"

  # No zap stanza required
end
