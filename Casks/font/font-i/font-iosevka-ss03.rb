cask "font-iosevka-ss03" do
  version "32.3.0"
  sha256 "039d9b9597447f5c89a56816454af7d2bd3396ef396cb6a24f03ea7cd529a403"

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
