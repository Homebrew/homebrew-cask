cask "font-pennstander" do
  version "0.5.0"
  sha256 "2da18f7e6380090e0e559e0b26dda777fd9cf76dd6ba6f19696f3daef757d3e2"

  url "https://github.com/juliusross1/Pennstander/archive/refs/tags/v#{version}.tar.gz"
  name "Pennstander"
  homepage "https://github.com/juliusross1/Pennstander"

  livecheck do
    url "https://github.com/juliusross1/Pennstander"
    strategy :git
  end

  font "Pennstander-#{version}/fonts/opentype/Pennstander-Black.otf"
  font "Pennstander-#{version}/fonts/opentype/Pennstander-Bold.otf"
  font "Pennstander-#{version}/fonts/opentype/Pennstander-ExtraBold.otf"
  font "Pennstander-#{version}/fonts/opentype/Pennstander-ExtraLight.otf"
  font "Pennstander-#{version}/fonts/opentype/Pennstander-ItalicBlack.otf"
  font "Pennstander-#{version}/fonts/opentype/Pennstander-ItalicBold.otf"
  font "Pennstander-#{version}/fonts/opentype/Pennstander-ItalicExtraBold.otf"
  font "Pennstander-#{version}/fonts/opentype/Pennstander-ItalicExtraLight.otf"
  font "Pennstander-#{version}/fonts/opentype/Pennstander-ItalicLight.otf"
  font "Pennstander-#{version}/fonts/opentype/Pennstander-ItalicMedium.otf"
  font "Pennstander-#{version}/fonts/opentype/Pennstander-ItalicRegular.otf"
  font "Pennstander-#{version}/fonts/opentype/Pennstander-ItalicSemiBold.otf"
  font "Pennstander-#{version}/fonts/opentype/Pennstander-ItalicThin.otf"
  font "Pennstander-#{version}/fonts/opentype/Pennstander-Light.otf"
  font "Pennstander-#{version}/fonts/opentype/Pennstander-Medium.otf"
  font "Pennstander-#{version}/fonts/opentype/Pennstander-Regular.otf"
  font "Pennstander-#{version}/fonts/opentype/Pennstander-SemiBold.otf"
  font "Pennstander-#{version}/fonts/opentype/Pennstander-Thin.otf"
  font "Pennstander-#{version}/fonts/opentype/PennstanderMath-Black.otf"
  font "Pennstander-#{version}/fonts/opentype/PennstanderMath-Bold.otf"
  font "Pennstander-#{version}/fonts/opentype/PennstanderMath-ExtraBold.otf"
  font "Pennstander-#{version}/fonts/opentype/PennstanderMath-ExtraLight.otf"
  font "Pennstander-#{version}/fonts/opentype/PennstanderMath-Light.otf"
  font "Pennstander-#{version}/fonts/opentype/PennstanderMath-Medium.otf"
  font "Pennstander-#{version}/fonts/opentype/PennstanderMath-Regular.otf"
  font "Pennstander-#{version}/fonts/opentype/PennstanderMath-SemiBold.otf"
  font "Pennstander-#{version}/fonts/opentype/PennstanderMath-Thin.otf"

  zap :not_required
end
