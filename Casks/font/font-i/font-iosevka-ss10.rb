cask "font-iosevka-ss10" do
  version "31.6.0"
  sha256 "261f33ce1ae8516aa6cb979a14ae855850a7b0fd2c7db7986f1c58377adddadd"

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
