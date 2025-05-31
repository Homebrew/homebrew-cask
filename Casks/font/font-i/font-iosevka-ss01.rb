cask "font-iosevka-ss01" do
  version "33.2.4"
  sha256 "46448c9583830ffde57beb714bbccdce9d2f4e9f68ac2b32a0f0e5a2f89e74a5"

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
