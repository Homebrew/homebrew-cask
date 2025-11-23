cask "font-ezra-sil" do
  version "2.51"
  sha256 "f16bcb3ec4473ac6a9f138ee0dbde7cc2f835e93a90cbe8649b3f32677760cc1"

  url "https://software.sil.org/downloads/r/ezra/EzraSIL-#{version}.zip"
  name "Ezra SIL"
  homepage "https://software.sil.org/ezra/"

  livecheck do
    url :homepage
    regex(/href=.*?EzraSIL[._-]v?(\d+(?:\.\d+)+)\.zip/i)
  end

  font "EzraSIL#{version}/SILEOT.ttf"
  font "EzraSIL#{version}/SILEOTSR.ttf"

  # No zap stanza required
end
