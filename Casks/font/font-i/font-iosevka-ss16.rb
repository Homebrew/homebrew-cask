cask "font-iosevka-ss16" do
  version "34.9.0"
  sha256 "005e4b87d18e051e79e0f1116552793078d7cb68171e1cc5bf0eb0ff31b21b57"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS16-#{version}.zip"
  name "Iosevka SS16"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS16.ttc"

  # No zap stanza required
end
