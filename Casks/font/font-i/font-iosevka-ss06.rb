cask "font-iosevka-ss06" do
  version "34.6.1"
  sha256 "bdbc85b2dbf92d0fc94c9a38c8dfbf46f7aa16fe1f478457e7c9d54585bf7219"

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
