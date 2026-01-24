cask "font-iosevka-ss03" do
  version "34.1.0"
  sha256 "1c629f0479bca9d8632573462c6e7f68564cc3a7898d16579e0cd1ab4fb06fd6"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS03-#{version}.zip"
  name "Iosevka SS03"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS03.ttc"

  # No zap stanza required
end
