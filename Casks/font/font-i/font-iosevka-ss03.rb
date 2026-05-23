cask "font-iosevka-ss03" do
  version "34.6.0"
  sha256 "15548a29f9ac65a26cf816c29aca02306bbf6edb27428afd2a86bd9a8cd73c4a"

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
