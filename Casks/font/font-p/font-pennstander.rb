cask "font-pennstander" do
  version "0.4.1"
  sha256 "8b227f127fa95c1aed66f0091b0eca0a9cd623cfa259311352e67e2bbf6c8414"

  url "https://github.com/juliusross1/Pennstander/archive/refs/tags/v#{version}.tar.gz"
  name "Pennstander"
  homepage "https://github.com/juliusross1/Pennstander"

  livecheck do
    url "https://github.com/juliusross1/Pennstander"
    strategy :git
  end

  font "Pennstander-#{version}/fonts/otf/Pennstander-Black.otf"
  font "Pennstander-#{version}/fonts/otf/Pennstander-Bold.otf"
  font "Pennstander-#{version}/fonts/otf/Pennstander-ExtraBold.otf"
  font "Pennstander-#{version}/fonts/otf/Pennstander-ExtraLight.otf"
  font "Pennstander-#{version}/fonts/otf/Pennstander-ItalicBlack.otf"
  font "Pennstander-#{version}/fonts/otf/Pennstander-ItalicBold.otf"
  font "Pennstander-#{version}/fonts/otf/Pennstander-ItalicExtraBold.otf"
  font "Pennstander-#{version}/fonts/otf/Pennstander-ItalicExtraLight.otf"
  font "Pennstander-#{version}/fonts/otf/Pennstander-ItalicLight.otf"
  font "Pennstander-#{version}/fonts/otf/Pennstander-ItalicMedium.otf"
  font "Pennstander-#{version}/fonts/otf/Pennstander-ItalicRegular.otf"
  font "Pennstander-#{version}/fonts/otf/Pennstander-ItalicSemiBold.otf"
  font "Pennstander-#{version}/fonts/otf/Pennstander-ItalicThin.otf"
  font "Pennstander-#{version}/fonts/otf/Pennstander-Light.otf"
  font "Pennstander-#{version}/fonts/otf/Pennstander-Medium.otf"
  font "Pennstander-#{version}/fonts/otf/Pennstander-Regular.otf"
  font "Pennstander-#{version}/fonts/otf/Pennstander-SemiBold.otf"
  font "Pennstander-#{version}/fonts/otf/Pennstander-Thin.otf"
  font "Pennstander-#{version}/fonts/otf/PennstanderMath-Black.otf"
  font "Pennstander-#{version}/fonts/otf/PennstanderMath-Bold.otf"
  font "Pennstander-#{version}/fonts/otf/PennstanderMath-ExtraBold.otf"
  font "Pennstander-#{version}/fonts/otf/PennstanderMath-ExtraLight.otf"
  font "Pennstander-#{version}/fonts/otf/PennstanderMath-Light.otf"
  font "Pennstander-#{version}/fonts/otf/PennstanderMath-Medium.otf"
  font "Pennstander-#{version}/fonts/otf/PennstanderMath-Regular.otf"
  font "Pennstander-#{version}/fonts/otf/PennstanderMath-SemiBold.otf"
  font "Pennstander-#{version}/fonts/otf/PennstanderMath-Thin.otf"

  # No zap stanza required
end
