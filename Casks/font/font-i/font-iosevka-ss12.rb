cask "font-iosevka-ss12" do
  version "31.6.1"
  sha256 "ebfe475d659b323cd8636de39e4e38750a4b60284d23c5991cc93e3d00ee86f6"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS12-#{version}.zip"
  name "Iosevka SS12"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS12.ttc"

  # No zap stanza required
end
