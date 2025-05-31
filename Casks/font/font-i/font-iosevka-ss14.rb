cask "font-iosevka-ss14" do
  version "33.2.4"
  sha256 "ba28b02780cef35e6b310ac9e5261b637abead47432de08510d9ef99235e840a"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS14-#{version}.zip"
  name "Iosevka SS14"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS14.ttc"

  # No zap stanza required
end
