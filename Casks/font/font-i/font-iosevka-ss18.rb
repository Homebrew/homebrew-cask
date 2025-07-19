cask "font-iosevka-ss18" do
  version "33.2.7"
  sha256 "533496ae185a0c65feb3f0f8a20cc35b23f49f978b5033d3725d03deab86be1e"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS18-#{version}.zip"
  name "Iosevka SS18"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS18.ttc"

  # No zap stanza required
end
