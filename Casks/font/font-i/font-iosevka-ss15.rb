cask "font-iosevka-ss15" do
  version "32.4.0"
  sha256 "14c13fe8f9b93427255794b896a452751230aa6ec2c42e4c7f9368cd1f586ea1"

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
