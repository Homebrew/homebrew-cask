cask "font-iosevka-ss10" do
  version "33.2.9"
  sha256 "474e950512088b2dd3b87afadd9dc3eaa3d55d4f553ac88898b314e275901d20"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS10-#{version}.zip"
  name "Iosevka SS10"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS10.ttc"

  # No zap stanza required
end
