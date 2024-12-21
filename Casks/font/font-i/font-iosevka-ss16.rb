cask "font-iosevka-ss16" do
  version "32.3.0"
  sha256 "9c6cf8898e0fd9fb1b35667b2211ba59daf49234fd7350236476bfd9a8c80338"

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
