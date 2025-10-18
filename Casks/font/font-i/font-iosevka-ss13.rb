cask "font-iosevka-ss13" do
  version "33.3.2"
  sha256 "f84c7203577b3bc43cc77622afd6dd2b46f2d1d499242f9fd050072ffd0170f2"

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
