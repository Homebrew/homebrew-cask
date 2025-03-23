cask "font-cozette" do
  version "1.27.0"
  sha256 "ce3435f89bad4e6fcc1faf45fb9cfcb62473a07b6b8f5f709973f9cb4df643d0"

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
