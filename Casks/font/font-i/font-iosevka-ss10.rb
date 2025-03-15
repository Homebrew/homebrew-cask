cask "font-iosevka-ss10" do
  version "33.1.0"
  sha256 "a07b08159bbd50f8b98e24659885a180ed98d04f3b41c806454373bf8d23644d"

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
