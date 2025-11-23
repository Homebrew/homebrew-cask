cask "font-cozette" do
  version "1.30.0"
  sha256 "c1515e63ba969d6099168c7a57b68c642025a73cd5112c39f62112d2dd16b709"

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
