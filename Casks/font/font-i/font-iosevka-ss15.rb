cask "font-iosevka-ss15" do
  version "34.8.1"
  sha256 "92ed93c1f14efffbbd7d8bf01e1ed6cab3b77a3a9097c4d5ffa5343c90455846"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS15-#{version}.zip"
  name "Iosevka SS15"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS15.ttc"

  # No zap stanza required
end
