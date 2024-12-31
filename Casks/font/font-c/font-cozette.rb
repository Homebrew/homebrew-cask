cask "font-cozette" do
  version "1.26.0"
  sha256 "0f1582d475afc685c82184e49a67d78907fa2137a51b73ea99aaa5fb54c27b54"

  url "https://github.com/slavfox/Cozette/releases/download/v.#{version}/CozetteFonts-v-#{version.dots_to_hyphens}.zip"
  name "Cozette"
  homepage "https://github.com/slavfox/Cozette"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "CozetteFonts/CozetteCrossedSevenVector.otf"
  font "CozetteFonts/CozetteCrossedSevenVectorBold.otf"
  font "CozetteFonts/CozetteVector.otf"
  font "CozetteFonts/CozetteVectorBold.otf"

  # No zap stanza required
end
