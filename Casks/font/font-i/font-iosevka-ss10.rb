cask "font-iosevka-ss10" do
  version "34.7.0"
  sha256 "3755d4d563f6e91e2686375a6cbc69adc394b701a008a0092cb24d273404ff17"

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
