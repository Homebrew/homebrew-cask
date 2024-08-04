cask "font-iosevka-ss15" do
  version "31.1.0"
  sha256 "56326538e26c85ff750811f03fd6e85e9aede55ed6b13e16d987909615b1fa5d"

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
