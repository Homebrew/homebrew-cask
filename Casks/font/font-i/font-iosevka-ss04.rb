cask "font-iosevka-ss04" do
  version "34.2.1"
  sha256 "0fb27a8b4a6ace77c1dc906ee72cab2ff9dba5b27106c89be2d3486e2a6bc284"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS04-#{version}.zip"
  name "Iosevka SS04"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS04.ttc"

  # No zap stanza required
end
