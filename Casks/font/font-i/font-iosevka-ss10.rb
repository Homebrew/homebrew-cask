cask "font-iosevka-ss10" do
  version "33.3.2"
  sha256 "897d8b849d4a9316148d669e5c722992a7035c31dedce507dce9956bc998d0bc"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS10-#{version}.zip"
  name "Iosevka SS10"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS10.ttc"

  # No zap stanza required
end
