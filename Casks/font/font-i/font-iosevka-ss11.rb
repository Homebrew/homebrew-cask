cask "font-iosevka-ss11" do
  version "33.2.7"
  sha256 "73935c382ea54a1ccb1d60c4ab32af9cd8e0ea65acd14660a94f9eab4dc1e0f2"

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
