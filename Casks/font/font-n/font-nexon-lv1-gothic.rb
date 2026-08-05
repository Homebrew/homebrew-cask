cask "font-nexon-lv1-gothic" do
  version :latest
  sha256 :no_check

  url "https://brand.nexon.com/resources/NEXON_Lv1_Gothic.zip"
  name "NEXON Lv.1 Gothic"
  name "넥슨 Lv.1 고딕"
  homepage "https://brand.nexon.com/ci-brand-guidelines/typeface"

  font "NEXON Lv1 Gothic_OTF_TTF/OTF/NEXON Lv1 Gothic OTF Bold.otf"
  font "NEXON Lv1 Gothic_OTF_TTF/OTF/NEXON Lv1 Gothic OTF Light.otf"
  font "NEXON Lv1 Gothic_OTF_TTF/OTF/NEXON Lv1 Gothic OTF.otf"

  # No zap stanza required
end
