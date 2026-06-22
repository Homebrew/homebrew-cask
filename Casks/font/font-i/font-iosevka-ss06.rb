cask "font-iosevka-ss06" do
  version "34.6.3"
  sha256 "2756ddcc16db559a4f87f55edc1c93781c50c6206500bb16295b09b22c3dca18"

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
