cask "font-iosevka-curly" do
  version "34.5.0"
  sha256 "2105bfa76c612931ef81988773a562081bfbc6d57fe5f42337aa441d129d3a5d"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaCurly-#{version}.zip"
  name "Iosevka Curly"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaCurly.ttc"

  # No zap stanza required
end
