cask "font-iosevka-ss15" do
  version "31.9.0"
  sha256 "872eff1a369e74e6a43c32d4829239090d7e8f6552ffba185200492594c495ad"

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
