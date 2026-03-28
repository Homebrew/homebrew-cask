cask "font-iosevka-ss13" do
  version "34.3.0"
  sha256 "9e8d0f2faf027e30caa87b0d960b479516813f24209118541657b4ef0ead3723"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS13-#{version}.zip"
  name "Iosevka SS13"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS13.ttc"

  # No zap stanza required
end
