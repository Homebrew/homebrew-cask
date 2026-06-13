cask "font-iosevka-curly" do
  version "34.6.2"
  sha256 "b24f0a3d1ca6c8be3b8835623870272f8c90bd8034e5488235b0c92928d213b5"

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
