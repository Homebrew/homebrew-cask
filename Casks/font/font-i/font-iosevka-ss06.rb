cask "font-iosevka-ss06" do
  version "31.6.0"
  sha256 "f7ccb993650d61602adf655b35c4bc4fd9835ba71e312d7df589cbaae7ba11a2"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS06-#{version}.zip"
  name "Iosevka SS06"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS06.ttc"

  # No zap stanza required
end
