cask "font-iosevka-ss08" do
  version "33.0.1"
  sha256 "90c2c7f9c20713c8f7636e72444930a74c17fdd937e7e0183013cd179ce70c1c"

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
