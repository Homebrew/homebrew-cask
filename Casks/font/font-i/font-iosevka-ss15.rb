cask "font-iosevka-ss15" do
  version "33.2.8"
  sha256 "ea88f55f1d3fbb98dead1df6dd4495b288bce0393d1740bc3bafa2f18a49be76"

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
