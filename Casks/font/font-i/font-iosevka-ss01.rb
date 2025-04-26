cask "font-iosevka-ss01" do
  version "33.2.2"
  sha256 "b2a4338a156d21dd896dd2c4f8b34bbb04136ac4d7c136c002673aed93ef6971"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS01-#{version}.zip"
  name "Iosevka SS01"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS01.ttc"

  # No zap stanza required
end
