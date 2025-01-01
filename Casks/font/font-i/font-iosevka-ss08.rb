cask "font-iosevka-ss08" do
  version "32.3.1"
  sha256 "4be15dee0ba7dbbac39ea396ffb2fa6ee560d0bfa44ae0c6f540c5149306fb81"

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
