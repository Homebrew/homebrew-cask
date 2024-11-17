cask "font-iosevka-ss11" do
  version "32.1.0"
  sha256 "a2610dd5389039ec11f13263649f788c2dd8ebb7c36b6b2d2c1cf1743fc0c5bf"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS11-#{version}.zip"
  name "Iosevka SS11"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS11.ttc"

  # No zap stanza required
end
