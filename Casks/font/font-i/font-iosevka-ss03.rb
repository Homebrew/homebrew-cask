cask "font-iosevka-ss03" do
  version "33.3.6"
  sha256 "e945a6e5eb396da80d72d03d11fe6995505d4b7ce1c1a9bb266e96f7980d1591"

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
