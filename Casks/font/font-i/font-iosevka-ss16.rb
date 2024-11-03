cask "font-iosevka-ss16" do
  version "32.0.1"
  sha256 "2bf36bd79a115943d3d4b9fb969329a22ec27deb2c57098ce09e0f6243e2378d"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS16-#{version}.zip"
  name "Iosevka SS16"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS16.ttc"

  # No zap stanza required
end
