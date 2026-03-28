cask "font-iosevka-ss15" do
  version "34.3.0"
  sha256 "35ae2d4730dc90c3b20149c5b2853966e0367744fdcc07ced51c0d668464a1c6"

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
