cask "font-iosevka-curly" do
  version "33.2.8"
  sha256 "281ccba978ec8a8f4cc805329457fc7d8bf60a5ee71ef2354ef32e346423f578"

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
