cask "font-iosevka-ss11" do
  version "32.3.1"
  sha256 "b5d84175278c16ce3ae59307248c3d2ba36e64815616fc2cf3064d39de073347"

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
