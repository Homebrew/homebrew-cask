cask "font-iosevka-ss15" do
  version "34.1.0"
  sha256 "ace9472b5bbca362fac68daf55f625beea925e3f422c08a56e238d79ae001376"

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
