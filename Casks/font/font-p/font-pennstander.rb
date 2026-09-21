cask "font-pennstander" do
  version "0.4.1"
  sha256 :no_check

  url "https://mirrors.ctan.org/fonts/pennstander-otf.zip"
  name "Pennstander"
  desc "Text and mathematics font based on Grandstander"
  homepage "https://ctan.org/pkg/pennstander-otf"

  livecheck do
    url :homepage
    regex(/Version.*?v?(\d+(?:\.\d+)+)/i)
  end

  font "pennstander-otf/fonts/Pennstander-Black.otf"
  font "pennstander-otf/fonts/Pennstander-Bold.otf"
  font "pennstander-otf/fonts/Pennstander-ExtraBold.otf"
  font "pennstander-otf/fonts/Pennstander-ExtraLight.otf"
  font "pennstander-otf/fonts/Pennstander-ItalicBlack.otf"
  font "pennstander-otf/fonts/Pennstander-ItalicBold.otf"
  font "pennstander-otf/fonts/Pennstander-ItalicExtraBold.otf"
  font "pennstander-otf/fonts/Pennstander-ItalicExtraLight.otf"
  font "pennstander-otf/fonts/Pennstander-ItalicLight.otf"
  font "pennstander-otf/fonts/Pennstander-ItalicMedium.otf"
  font "pennstander-otf/fonts/Pennstander-ItalicRegular.otf"
  font "pennstander-otf/fonts/Pennstander-ItalicSemiBold.otf"
  font "pennstander-otf/fonts/Pennstander-ItalicThin.otf"
  font "pennstander-otf/fonts/Pennstander-Light.otf"
  font "pennstander-otf/fonts/Pennstander-Medium.otf"
  font "pennstander-otf/fonts/Pennstander-Regular.otf"
  font "pennstander-otf/fonts/Pennstander-SemiBold.otf"
  font "pennstander-otf/fonts/Pennstander-Thin.otf"
  font "pennstander-otf/fonts/PennstanderMath-Black.otf"
  font "pennstander-otf/fonts/PennstanderMath-Bold.otf"
  font "pennstander-otf/fonts/PennstanderMath-ExtraBold.otf"
  font "pennstander-otf/fonts/PennstanderMath-ExtraLight.otf"
  font "pennstander-otf/fonts/PennstanderMath-Light.otf"
  font "pennstander-otf/fonts/PennstanderMath-Medium.otf"
  font "pennstander-otf/fonts/PennstanderMath-Regular.otf"
  font "pennstander-otf/fonts/PennstanderMath-SemiBold.otf"
  font "pennstander-otf/fonts/PennstanderMath-Thin.otf"

  # No zap stanza required
end
