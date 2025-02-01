cask "font-iosevka-ss10" do
  version "32.5.0"
  sha256 "00d64f4314e17282e972879d1144e4ef17d9212606dcd71de413a18bf812d172"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS10-#{version}.zip"
  name "Iosevka SS10"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS10.ttc"

  # No zap stanza required
end
