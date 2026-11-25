cask "font-iosevka-ss06" do
  version "34.9.1"
  sha256 "f2ceb101775f07300b7445ff3512b048af785e8228c1c883530072f5a39027b4"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS06-#{version}.zip"
  name "Iosevka SS06"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS06.ttc"

  zap :not_required
end
