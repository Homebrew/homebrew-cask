cask "font-junicode" do
  version "2.214"
  sha256 "83ac3f121b6757cb6cd1f6212534cbf7bd01a6da9ab4ba416dccb2314d506574"

  url "https://github.com/psb1558/Junicode-font/releases/download/v#{version}/Junicode_#{version}.zip"
  name "Junicode"
  homepage "https://github.com/psb1558/Junicode-font"

  livecheck do
    url :url
    strategy :github_latest
  end

  no_autobump! because: :requires_manual_review

  font "Junicode/OTF/Junicode-Bold.otf"
  font "Junicode/OTF/Junicode-BoldItalic.otf"
  font "Junicode/OTF/Junicode-Cond.otf"
  font "Junicode/OTF/Junicode-CondItalic.otf"
  font "Junicode/OTF/Junicode-CondLight.otf"
  font "Junicode/OTF/Junicode-CondLightItalic.otf"
  font "Junicode/OTF/Junicode-CondMedium.otf"
  font "Junicode/OTF/Junicode-CondMediumItalic.otf"
  font "Junicode/OTF/Junicode-Exp.otf"
  font "Junicode/OTF/Junicode-ExpBold.otf"
  font "Junicode/OTF/Junicode-ExpBoldItalic.otf"
  font "Junicode/OTF/Junicode-ExpItalic.otf"
  font "Junicode/OTF/Junicode-ExpMedium.otf"
  font "Junicode/OTF/Junicode-ExpMediumItalic.otf"
  font "Junicode/OTF/Junicode-ExpSmBold.otf"
  font "Junicode/OTF/Junicode-ExpSmBoldItalic.otf"
  font "Junicode/OTF/Junicode-Italic.otf"
  font "Junicode/OTF/Junicode-Light.otf"
  font "Junicode/OTF/Junicode-LightItalic.otf"
  font "Junicode/OTF/Junicode-Medium.otf"
  font "Junicode/OTF/Junicode-MediumItalic.otf"
  font "Junicode/OTF/Junicode-Regular.otf"
  font "Junicode/OTF/Junicode-SmBold.otf"
  font "Junicode/OTF/Junicode-SmBoldItalic.otf"
  font "Junicode/OTF/Junicode-SmCond.otf"
  font "Junicode/OTF/Junicode-SmCondItalic.otf"
  font "Junicode/OTF/Junicode-SmCondLight.otf"
  font "Junicode/OTF/Junicode-SmCondLightItalic.otf"
  font "Junicode/OTF/Junicode-SmCondMedium.otf"
  font "Junicode/OTF/Junicode-SmCondMediumItalic.otf"
  font "Junicode/OTF/Junicode-SmExp.otf"
  font "Junicode/OTF/Junicode-SmExpBold.otf"
  font "Junicode/OTF/Junicode-SmExpBoldItalic.otf"
  font "Junicode/OTF/Junicode-SmExpItalic.otf"
  font "Junicode/OTF/Junicode-SmExpMedium.otf"
  font "Junicode/OTF/Junicode-SmExpMediumItalic.otf"
  font "Junicode/OTF/Junicode-SmExpSmBold.otf"
  font "Junicode/OTF/Junicode-SmExpSmBoldItalic.otf"
  font "Junicode/VAR/JunicodeVF-Italic.ttf"
  font "Junicode/VAR/JunicodeVF-Roman.ttf"

  # No zap stanza required
end
