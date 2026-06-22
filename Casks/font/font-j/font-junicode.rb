cask "font-junicode" do
  version "2.226"
  sha256 "dae8ebc04a8592445c1878db8451838dd2f49d7c9912b3d4f3cab84c1516c5fe"

  url "https://github.com/psb1558/Junicode-font/releases/download/v#{version}/Junicode_#{version}.zip"
  name "Junicode"
  homepage "https://github.com/psb1558/Junicode-font"

  livecheck do
    url :url
    strategy :github_latest
  end

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
  font "Junicode/OTF/Junicode-ExpSemiBold.otf"
  font "Junicode/OTF/Junicode-ExpSemiBoldItalic.otf"
  font "Junicode/OTF/Junicode-Italic.otf"
  font "Junicode/OTF/Junicode-Light.otf"
  font "Junicode/OTF/Junicode-LightItalic.otf"
  font "Junicode/OTF/Junicode-Medium.otf"
  font "Junicode/OTF/Junicode-MediumItalic.otf"
  font "Junicode/OTF/Junicode-Regular.otf"
  font "Junicode/OTF/Junicode-SemiBold.otf"
  font "Junicode/OTF/Junicode-SemiBoldItalic.otf"
  font "Junicode/OTF/Junicode-SemiCond.otf"
  font "Junicode/OTF/Junicode-SemiCondItalic.otf"
  font "Junicode/OTF/Junicode-SemiCondLight.otf"
  font "Junicode/OTF/Junicode-SemiCondLightItalic.otf"
  font "Junicode/OTF/Junicode-SemiCondMedium.otf"
  font "Junicode/OTF/Junicode-SemiCondMediumItalic.otf"
  font "Junicode/OTF/Junicode-SemiExp.otf"
  font "Junicode/OTF/Junicode-SemiExpBold.otf"
  font "Junicode/OTF/Junicode-SemiExpBoldItalic.otf"
  font "Junicode/OTF/Junicode-SemiExpItalic.otf"
  font "Junicode/OTF/Junicode-SemiExpMedium.otf"
  font "Junicode/OTF/Junicode-SemiExpMediumItalic.otf"
  font "Junicode/OTF/Junicode-SemiExpSemiBold.otf"
  font "Junicode/OTF/Junicode-SemiExpSemiBoldItalic.otf"
  font "Junicode/VAR/JunicodeVF-Italic.ttf"
  font "Junicode/VAR/JunicodeVF-Roman.ttf"

  # No zap stanza required
end
