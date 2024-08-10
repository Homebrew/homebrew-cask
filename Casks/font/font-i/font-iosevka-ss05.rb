cask "font-iosevka-ss05" do
  version "31.2.0"
  sha256 "9e80b4c2899ec78a13d0b8c9006b4443e68a6421850cec9801dc19a627f6d2ee"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS05-#{version}.zip"
  name "Iosevka SS05"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS05.ttc"

  # No zap stanza required
end
