cask "font-nexon-maplestory" do
  version :latest
  sha256 :no_check

  url "https://brand.nexon.com/resources/NEXON_Maplestory.zip"
  name "NEXON Maplestory"
  name "넥슨 메이플스토리"
  homepage "https://brand.nexon.com/ci-brand-guidelines/typeface"

  font "OTF/Maplestory OTF Bold.otf"
  font "OTF/Maplestory OTF Light.otf"

  # No zap stanza required
end
