cask "font-iosevka-ss11" do
  version "34.3.0"
  sha256 "ce8b10c45b1aff81f749a1f52d94d95ab5958205c9a5226ab4b881823fee5ede"

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
