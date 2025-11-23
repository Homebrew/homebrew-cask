cask "font-iosevka-ss13" do
  version "33.3.5"
  sha256 "e386eb76426b9b332ae0d4505a055e25de02160e9e79ae8a3d91acec2bd04aa6"

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
