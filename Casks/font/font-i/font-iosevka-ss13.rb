cask "font-iosevka-ss13" do
  version "34.1.0"
  sha256 "82c607e807a8b95c06afc71c13d4cc83832705fcbfa97a4097cc35c84897f026"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS13-#{version}.zip"
  name "Iosevka SS13"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS13.ttc"

  # No zap stanza required
end
