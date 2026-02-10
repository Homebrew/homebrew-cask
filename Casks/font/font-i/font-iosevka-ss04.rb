cask "font-iosevka-ss04" do
  version "34.1.0"
  sha256 "6b76a00801125c35bfb98391080331b6a189e207e842c4a7c1e96a03acaed1a3"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS04-#{version}.zip"
  name "Iosevka SS04"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS04.ttc"

  # No zap stanza required
end
