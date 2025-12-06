cask "font-iosevka-ss17" do
  version "33.3.6"
  sha256 "97f6d996d219e0385be04a329f64a02930089e637c28eeec2d78b3dd4ab45b47"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS17-#{version}.zip"
  name "Iosevka SS17"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS17.ttc"

  # No zap stanza required
end
