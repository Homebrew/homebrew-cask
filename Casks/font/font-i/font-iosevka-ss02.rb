cask "font-iosevka-ss02" do
  version "33.2.0"
  sha256 "b452e2ce993c48ff19872f556a96748b5cac203ed45a6eb6aad7c2a7b8d8c559"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS02-#{version}.zip"
  name "Iosevka SS02"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS02.ttc"

  # No zap stanza required
end
