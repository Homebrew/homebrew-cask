cask "font-iosevka-ss16" do
  version "32.2.1"
  sha256 "e05179f430aa6a806d72702327a74efe0eb2569e50ee5da5fa5b2258cc229b29"

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
