cask "font-iosevka-ss03" do
  version "33.0.0"
  sha256 "9e8c8689814425fcd3615134f2f2b32aab29adbffd4bb9d3d1a4dc074c66aec7"

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
