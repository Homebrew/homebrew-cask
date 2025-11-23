cask "font-iosevka-ss14" do
  version "33.3.5"
  sha256 "eb5eb4ba00a94389f5fe3170f3051f3d9a44f04c4bd747565716793f241d9cc2"

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
