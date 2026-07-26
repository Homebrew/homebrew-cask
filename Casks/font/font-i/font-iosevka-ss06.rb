cask "font-iosevka-ss06" do
  version "34.8.0"
  sha256 "e151267a86c4966fc695c518769e674fbcf3f1c89bf096c9979db05dd6d0a0a3"

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
