cask "font-iosevka-curly" do
  version "33.2.2"
  sha256 "bfc57957ca969587e1e9b90c66878eb0a6be9f1bbc3067beca170ab35451f3bf"

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
