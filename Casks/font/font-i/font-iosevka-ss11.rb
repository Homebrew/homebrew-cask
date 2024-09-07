cask "font-iosevka-ss11" do
  version "31.6.0"
  sha256 "4efa03ab78edecfd35935db7c91149a1c162e857ca678aef9bc5e9bfe83eaa87"

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
