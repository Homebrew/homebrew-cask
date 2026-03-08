cask "font-iosevka-ss11" do
  version "34.2.1"
  sha256 "4dae5d490f99afdcac0cb2cbc6a37ea8cf60d2ea1c7ab2aaeed67841ef46c6bf"

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
