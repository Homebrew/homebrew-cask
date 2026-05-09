cask "font-iosevka-ss03" do
  version "34.5.0"
  sha256 "86ab8d120e9ce1e25e40a69c890a974d27918ffb26ec25a5e1d00cb3caca7239"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS03-#{version}.zip"
  name "Iosevka SS03"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS03.ttc"

  # No zap stanza required
end
