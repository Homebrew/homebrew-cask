cask "font-iosevka-ss04" do
  version "33.2.8"
  sha256 "687f1facfdfc794ad409fa26f6f0b8139558196fcb98cc8b22ea84ef9e5976e8"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS04-#{version}.zip"
  name "Iosevka SS04"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS04.ttc"

  # No zap stanza required
end
