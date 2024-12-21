cask "font-iosevka-ss15" do
  version "32.3.0"
  sha256 "65003a180c9214d3a27a67c26d712aeaa28a7eadec459b2019c9b59903f88502"

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
