cask "font-iosevka-ss15" do
  version "33.2.0"
  sha256 "f2d221180d86f3317307ffd0333a31085ec5a62109333f9a5a5b95ea48cd0010"

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
