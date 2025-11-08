cask "font-iosevka-ss16" do
  version "33.3.4"
  sha256 "78fbe75e2c6b3d7562fa3578e0df97679fee54e9e79a5b980115c6c846c32380"

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
