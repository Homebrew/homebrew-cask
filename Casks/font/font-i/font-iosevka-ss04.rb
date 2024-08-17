cask "font-iosevka-ss04" do
  version "31.3.0"
  sha256 "ff6e8b0864395ecad9027dfb1140e152992489afe8096e62cb704a87bd35f370"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS04-#{version}.zip"
  name "Iosevka SS04"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS04.ttc"

  # No zap stanza required
end
