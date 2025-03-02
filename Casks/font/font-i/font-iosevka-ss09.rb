cask "font-iosevka-ss09" do
  version "33.0.1"
  sha256 "63ad0be3c295cba0eb77ac53f855b3df4f347cb5d0b9136f638490eafd1d5d91"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS09-#{version}.zip"
  name "Iosevka SS09"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS09.ttc"

  # No zap stanza required
end
