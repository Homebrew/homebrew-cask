cask "font-cozette" do
  version "1.29.0"
  sha256 "1c7eb7c0117b6ac4955e1a2465bb6f94e08445509f4f595b2651ebdabca0c778"

  url "https://github.com/slavfox/Cozette/releases/download/v.#{version}/CozetteFonts-v-#{version.dots_to_hyphens}.zip"
  name "Cozette"
  homepage "https://github.com/slavfox/Cozette"

  livecheck do
    url :url
    strategy :github_latest
  end

  no_autobump! because: :requires_manual_review

  font "CozetteFonts/cozette.dfont"
  font "CozetteFonts/cozette_hidpi.dfont"
  font "CozetteFonts/CozetteCrossedSevenVector.otf"
  font "CozetteFonts/CozetteCrossedSevenVectorBold.otf"
  font "CozetteFonts/CozetteVector.otf"
  font "CozetteFonts/CozetteVectorBold.otf"

  # No zap stanza required
end
