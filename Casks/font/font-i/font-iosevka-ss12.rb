cask "font-iosevka-ss12" do
  version "34.6.1"
  sha256 "d48dca0e399c7bfa9a81d194770af8c0e2aa9e0bcac5813371971e3517080440"

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
