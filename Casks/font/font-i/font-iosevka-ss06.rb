cask "font-iosevka-ss06" do
  version "34.4.0"
  sha256 "546d25ef5f4a84d3179b02ed4279bdab8c4f313b1d21bb6870f322051db946ff"

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
