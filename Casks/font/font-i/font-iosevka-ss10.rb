cask "font-iosevka-ss10" do
  version "34.1.0"
  sha256 "7c92403bdc3ba66e579b18f97cdf307b0529a46bec1dc5228d35372b32598764"

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
