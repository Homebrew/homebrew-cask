cask "font-iosevka-ss03" do
  version "34.6.2"
  sha256 "cbc7b01ba61aa44c2262634361965c3b3f7376f29dda22c4ef84dc86e14dc0df"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS03-#{version}.zip"
  name "Iosevka SS03"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS03.ttc"

  # No zap stanza required
end
