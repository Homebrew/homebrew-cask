cask "font-iosevka-ss16" do
  version "34.8.0"
  sha256 "7ae62d54ca412e1f4fff09461c3227426affae84d87f689068de168d9e9d4046"

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
