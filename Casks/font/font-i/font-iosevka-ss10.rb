cask "font-iosevka-ss10" do
  version "34.9.0"
  sha256 "560f192b2a8e5c408d2b00f7fc9796045ebf8fc9fef2ebdd96c8f98a6ed4b74c"

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
