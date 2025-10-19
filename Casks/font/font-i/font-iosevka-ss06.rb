cask "font-iosevka-ss06" do
  version "33.3.3"
  sha256 "da997297d833a1672da96b014ff180fc9c7e0a19c297f5edbc4029ab516573f4"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS06-#{version}.zip"
  name "Iosevka SS06"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS06.ttc"

  # No zap stanza required
end
