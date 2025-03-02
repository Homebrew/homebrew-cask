cask "font-iosevka-ss15" do
  version "33.0.1"
  sha256 "85c2aafcb5e8392275eb4799a4afbb648f16d60de2bdafadcea10cf5235fa5a2"

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
