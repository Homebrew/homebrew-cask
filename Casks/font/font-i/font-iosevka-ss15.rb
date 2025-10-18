cask "font-iosevka-ss15" do
  version "33.3.2"
  sha256 "5b7ee80c0d56f28e3b757819598516e7ea79f993bda01b39434cbfc73ce9e9a4"

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
