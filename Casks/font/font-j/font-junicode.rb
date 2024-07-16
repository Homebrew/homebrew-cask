cask "font-junicode" do
  version "2.208"
  sha256 "7398e617d0d7a3a4c4803f4f9c6bc5a7f564af0472c9109a17bc483c7bd94536"

  url "https://github.com/psb1558/Junicode-font/releases/download/v#{version}/Junicode_#{version}.zip"
  name "Junicode"
  homepage "https://github.com/psb1558/Junicode-font"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "Junicode/TTF/Junicode-Bold.ttf"
  font "Junicode/TTF/Junicode-BoldItalic.ttf"
  font "Junicode/TTF/Junicode-Cond.ttf"
  font "Junicode/TTF/Junicode-CondItalic.ttf"
  font "Junicode/TTF/Junicode-CondLight.ttf"
  font "Junicode/TTF/Junicode-CondLightItalic.ttf"
  font "Junicode/TTF/Junicode-CondMedium.ttf"
  font "Junicode/TTF/Junicode-CondMediumItalic.ttf"
  font "Junicode/TTF/Junicode-Exp.ttf"
  font "Junicode/TTF/Junicode-ExpBold.ttf"
  font "Junicode/TTF/Junicode-ExpBoldItalic.ttf"
  font "Junicode/TTF/Junicode-ExpItalic.ttf"
  font "Junicode/TTF/Junicode-ExpMedium.ttf"
  font "Junicode/TTF/Junicode-ExpMediumItalic.ttf"
  font "Junicode/TTF/Junicode-ExpSmBold.ttf"
  font "Junicode/TTF/Junicode-ExpSmBoldItalic.ttf"
  font "Junicode/TTF/Junicode-Italic.ttf"
  font "Junicode/TTF/Junicode-Light.ttf"
  font "Junicode/TTF/Junicode-LightItalic.ttf"
  font "Junicode/TTF/Junicode-Medium.ttf"
  font "Junicode/TTF/Junicode-MediumItalic.ttf"
  font "Junicode/TTF/Junicode-Regular.ttf"
  font "Junicode/TTF/Junicode-SmBold.ttf"
  font "Junicode/TTF/Junicode-SmBoldItalic.ttf"
  font "Junicode/TTF/Junicode-SmCond.ttf"
  font "Junicode/TTF/Junicode-SmCondItalic.ttf"
  font "Junicode/TTF/Junicode-SmCondLight.ttf"
  font "Junicode/TTF/Junicode-SmCondLightItalic.ttf"
  font "Junicode/TTF/Junicode-SmCondMedium.ttf"
  font "Junicode/TTF/Junicode-SmCondMediumItalic.ttf"
  font "Junicode/TTF/Junicode-SmExp.ttf"
  font "Junicode/TTF/Junicode-SmExpBold.ttf"
  font "Junicode/TTF/Junicode-SmExpBoldItalic.ttf"
  font "Junicode/TTF/Junicode-SmExpItalic.ttf"
  font "Junicode/TTF/Junicode-SmExpMedium.ttf"
  font "Junicode/TTF/Junicode-SmExpMediumItalic.ttf"
  font "Junicode/TTF/Junicode-SmExpSmBold.ttf"
  font "Junicode/TTF/Junicode-SmExpSmBoldItalic.ttf"
  font "Junicode/VAR/JunicodeVF-Italic.ttf"
  font "Junicode/VAR/JunicodeVF-Roman.ttf"

  # No zap stanza required
end
