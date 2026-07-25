cask "font-iosevka-ss15" do
  version "34.7.0"
  sha256 "121823088abb76b103e5f3320302eaf35813bf65e362813e7a7f7b540fd8ad55"

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
