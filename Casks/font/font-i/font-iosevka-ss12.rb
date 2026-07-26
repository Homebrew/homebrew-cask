cask "font-iosevka-ss12" do
  version "34.8.0"
  sha256 "a2821272de39bcfd90d9b8875e10107282dd54f2f9587198ec8f8479b8745951"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS12-#{version}.zip"
  name "Iosevka SS12"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS12.ttc"

  # No zap stanza required
end
