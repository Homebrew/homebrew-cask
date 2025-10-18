cask "font-iosevka-ss06" do
  version "33.3.2"
  sha256 "e2300879412415f4493c1148616af221ae5b34caf1a480492daebce0e511fcb8"

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
