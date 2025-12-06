cask "font-iosevka-ss18" do
  version "33.3.6"
  sha256 "9faacb9215d879259fe4ddfc1a5a79bcb6b5b069ced7d1282926e2e3f2d3fbca"

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
