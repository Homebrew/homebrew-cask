cask "font-iosevka-ss14" do
  version "33.2.8"
  sha256 "570a9ad4d7c3968a9b9e4432e3ddb2c28864c6bdbbab80d0a46d967496fe4b91"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS14-#{version}.zip"
  name "Iosevka SS14"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS14.ttc"

  # No zap stanza required
end
