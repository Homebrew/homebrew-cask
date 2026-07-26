cask "font-iosevka-curly" do
  version "34.8.0"
  sha256 "ac18dc2c3acc45420d27e32b4c78b1afa8c61ffaefefbbc90f8e4c8b5ed5a7b1"

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
