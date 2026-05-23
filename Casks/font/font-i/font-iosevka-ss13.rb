cask "font-iosevka-ss13" do
  version "34.6.0"
  sha256 "1295829f711decc560b6a6ea2ae1134b92d515d97b391b69764f9931d8e183e8"

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
