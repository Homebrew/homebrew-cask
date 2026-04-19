cask "font-iosevka-ss08" do
  version "34.4.0"
  sha256 "bda7f59de661509b68b18f7034e5cab38b6d349af72a7c755f673800c8c89fc7"

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
