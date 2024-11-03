cask "font-iosevka-ss08" do
  version "32.0.1"
  sha256 "01ac8bad48cc78ec9e789d610514b8e2d77aa3341774443e34f558b89adeb577"

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
