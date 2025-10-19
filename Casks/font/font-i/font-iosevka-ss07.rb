cask "font-iosevka-ss07" do
  version "33.3.3"
  sha256 "2d95a38c4035ee38ee91b3d3517e045b6dc0e2c86b13c4583b30a7fbd5812944"

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
