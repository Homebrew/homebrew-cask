cask "font-iosevka-ss07" do
  version "33.3.4"
  sha256 "e97b8f1d8e54616fedffb1d04df2842fb1587afc33ed0f996957f62f978cd525"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS07-#{version}.zip"
  name "Iosevka SS07"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS07.ttc"

  # No zap stanza required
end
