cask "font-iosevka-ss13" do
  version "34.5.0"
  sha256 "b0ab5a20cd51101222199eba278ef8585c46b052ee3be2d1cb8c87c490038211"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS13-#{version}.zip"
  name "Iosevka SS13"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS13.ttc"

  # No zap stanza required
end
