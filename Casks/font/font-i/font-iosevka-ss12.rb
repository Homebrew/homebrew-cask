cask "font-iosevka-ss12" do
  version "31.2.0"
  sha256 "f4bb699ccca73714c6edbac492cc9b7194f26aed6a253e6f3ead98fa71549887"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS12-#{version}.zip"
  name "Iosevka SS12"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS12.ttc"

  # No zap stanza required
end
