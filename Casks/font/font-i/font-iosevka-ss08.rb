cask "font-iosevka-ss08" do
  version "34.6.0"
  sha256 "5dddcc034144520fe28624620e84bfbf5cf31fd25731d423529ec8fa19f0d08a"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS08-#{version}.zip"
  name "Iosevka SS08"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS08.ttc"

  # No zap stanza required
end
