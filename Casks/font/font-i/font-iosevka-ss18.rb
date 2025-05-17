cask "font-iosevka-ss18" do
  version "33.2.3"
  sha256 "bb5e5ec531c8921dcea6b48c87032160752eb0332a2d47d7466509182792759b"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS18-#{version}.zip"
  name "Iosevka SS18"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS18.ttc"

  # No zap stanza required
end
