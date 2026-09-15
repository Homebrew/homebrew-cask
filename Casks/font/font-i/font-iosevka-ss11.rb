cask "font-iosevka-ss11" do
  version "34.8.1"
  sha256 "4f472c5bd90ae0590bd06635505806c612dd17ced74b945fe944df7bd332e5c9"

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
