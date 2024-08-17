cask "font-iosevka-ss13" do
  version "31.3.0"
  sha256 "b8c03cd6dcb2e78669118a90a93de6342856ccdc1064628b17b0696bd64362f0"

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
