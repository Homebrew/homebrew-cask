cask "font-iosevka-ss03" do
  version "33.2.6"
  sha256 "7ab66bb56bfec4e0bd9253330662e1461dbb02f8e8c9d80b2ebe559368d45a16"

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
