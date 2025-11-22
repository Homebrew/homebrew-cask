cask "font-iosevka-ss11" do
  version "33.3.5"
  sha256 "81043733d66b9b1a5bd00dc8848eca2d3ae7b0d6ee1f73f0ef1744649ed66284"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS11-#{version}.zip"
  name "Iosevka SS11"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS11.ttc"

  # No zap stanza required
end
