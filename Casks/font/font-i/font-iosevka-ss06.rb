cask "font-iosevka-ss06" do
  version "31.9.1"
  sha256 "dee2299547448de222f6772cb5a397aff8e2b725cbe2c9588ffb200b4fdf2c25"

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
