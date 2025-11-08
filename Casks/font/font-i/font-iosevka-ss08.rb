cask "font-iosevka-ss08" do
  version "33.3.4"
  sha256 "e55b382b3eeeecf922c28976ae33bbabbe6267308c3d71aef46115890aaf3f0c"

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
