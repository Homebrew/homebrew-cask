cask "font-iosevka-ss01" do
  version "34.5.0"
  sha256 "146d09fe917ebaef5d38e699fb3b49cd41d9d302bfb59ed5884175497fc98c3c"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS01-#{version}.zip"
  name "Iosevka SS01"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS01.ttc"

  # No zap stanza required
end
