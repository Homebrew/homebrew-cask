cask "font-iosevka-ss01" do
  version "33.3.3"
  sha256 "65cdf72a9d5a672221241381bfd97084a1525f39fa49f94b8e0e70b87ce1eee2"

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
