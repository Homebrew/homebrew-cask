cask "font-iosevka-ss08" do
  version "33.2.0"
  sha256 "c5bde454607182fafdfc25c2acff3c24e122aeb6bcbb07c7339198fd36aa737d"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS08-#{version}.zip"
  name "Iosevka SS08"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS08.ttc"

  # No zap stanza required
end
