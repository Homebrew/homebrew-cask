cask "font-sn-pro" do
  version "1.1.0"
  sha256 "b8953185881a741e62912033d0fdc0ad99f31e470c6a51c07859f883ec26ee19"

  url "https://github.com/supernotes/sn-pro/releases/download/#{version}/SN-Pro.zip",
      verified: "github.com/supernotes/sn-pro/"
  name "SN Pro Font Family"
  homepage "https://supernotes.app/open-source/sn-pro"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "SNPro/SNPro-Black.otf"
  font "SNPro/SNPro-BlackItalic.otf"
  font "SNPro/SNPro-Bold.otf"
  font "SNPro/SNPro-BoldItalic.otf"
  font "SNPro/SNPro-Heavy.otf"
  font "SNPro/SNPro-HeavyItalic.otf"
  font "SNPro/SNPro-Light.otf"
  font "SNPro/SNPro-LightItalic.otf"
  font "SNPro/SNPro-Medium.otf"
  font "SNPro/SNPro-MediumItalic.otf"
  font "SNPro/SNPro-Regular.otf"
  font "SNPro/SNPro-RegularItalic.otf"
  font "SNPro/SNPro-Semibold.otf"
  font "SNPro/SNPro-SemiboldItalic.otf"
  font "SNPro/SNPro-Thin.otf"
  font "SNPro/SNPro-ThinItalic.otf"

  # No zap stanza required
end
