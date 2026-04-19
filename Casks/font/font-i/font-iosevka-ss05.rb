cask "font-iosevka-ss05" do
  version "34.4.0"
  sha256 "f3b3583dd5402c482df84e9903df8dcb1550cb7341122971d7969a369d1aceaf"

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
