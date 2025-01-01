cask "font-iosevka-ss01" do
  version "32.3.1"
  sha256 "9cbd3d3de105747d63282f40015c4945d5fea9fb0655ef3a46b772180e33b5fa"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS01-#{version}.zip"
  name "Iosevka SS01"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS01.ttc"

  # No zap stanza required
end
