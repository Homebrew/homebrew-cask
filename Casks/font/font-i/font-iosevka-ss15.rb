cask "font-iosevka-ss15" do
  version "34.0.0"
  sha256 "10d5e23a0ff9355dd4361d7a636059b11976ab08099f6de3a9c881b9128fbcfa"

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
