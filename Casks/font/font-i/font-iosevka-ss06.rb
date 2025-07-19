cask "font-iosevka-ss06" do
  version "33.2.7"
  sha256 "279e43c31ddcba95717666f516936a9736d034a41de88e1eaa2b9d4f849089a8"

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
