cask "font-iosevka-ss16" do
  version "34.6.1"
  sha256 "0ba75738d2fa2b57bfc558674f440dba8fd8ec68b5875c3d0ab0170826a3d620"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS16-#{version}.zip"
  name "Iosevka SS16"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS16.ttc"

  # No zap stanza required
end
