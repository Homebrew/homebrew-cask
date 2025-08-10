cask "font-iosevka-ss12" do
  version "33.2.8"
  sha256 "f7235d64d0cb15af302eeb1341656a11cec70ced4cf4e42d43f4d812cabf93ce"

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
