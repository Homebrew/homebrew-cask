cask "font-iosevka-ss10" do
  version "33.0.0"
  sha256 "35e1de935193aaeda93de4c7850c707fe55c27917ef581dffcfe59f74426d2bd"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS10-#{version}.zip"
  name "Iosevka SS10"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS10.ttc"

  # No zap stanza required
end
