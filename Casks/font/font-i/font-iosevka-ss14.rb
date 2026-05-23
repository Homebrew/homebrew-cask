cask "font-iosevka-ss14" do
  version "34.6.0"
  sha256 "9860de084428434c90863b9e95608a1d017351abedcb0ea7e5c5beb54c107093"

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
