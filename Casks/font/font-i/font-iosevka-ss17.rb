cask "font-iosevka-ss17" do
  version "33.2.2"
  sha256 "f0f962eb35738240bdebae121b384e95f3532ef35ff2fa2d2342bf18e23bead6"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS17-#{version}.zip"
  name "Iosevka SS17"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS17.ttc"

  # No zap stanza required
end
