cask "font-iosevka-ss15" do
  version "34.4.0"
  sha256 "6a6c23a1d3567e0ec2958f29bf15df8e01fc61b7d5e6f5e286589c7f79be89c2"

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
