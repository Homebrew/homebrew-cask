cask "font-cozette" do
  version "1.28.0"
  sha256 "18edb5af56a38b4a4fcc5772ccab38069a669682d28c45bedd899eda30853d72"

  url "https://github.com/slavfox/Cozette/releases/download/v.#{version}/CozetteFonts-v-#{version.dots_to_hyphens}.zip"
  name "Cozette"
  homepage "https://github.com/slavfox/Cozette"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "CozetteFonts/cozette.dfont"
  font "CozetteFonts/cozette_hidpi.dfont"
  font "CozetteFonts/CozetteCrossedSevenVector.otf"
  font "CozetteFonts/CozetteCrossedSevenVectorBold.otf"
  font "CozetteFonts/CozetteVector.otf"
  font "CozetteFonts/CozetteVectorBold.otf"

  # No zap stanza required
end
