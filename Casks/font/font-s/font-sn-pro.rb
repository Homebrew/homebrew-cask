cask "font-sn-pro" do
  version "1.3.0"
  sha256 "db163ac2c3689a7490bca084ca992d757d9f861fff1eb1841989d9a1b44f2ac4"

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
