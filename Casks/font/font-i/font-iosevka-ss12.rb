cask "font-iosevka-ss12" do
  version "33.3.2"
  sha256 "11d9550cf644e1f29d50f784e58157b13f301eb87f5c2e0c303253a0dbf2cab2"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS12-#{version}.zip"
  name "Iosevka SS12"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS12.ttc"

  # No zap stanza required
end
