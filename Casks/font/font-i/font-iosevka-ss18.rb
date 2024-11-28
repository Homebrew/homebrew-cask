cask "font-iosevka-ss18" do
  version "32.2.0"
  sha256 "a60a58779941453309a2c83c58f624e05415369c4301bd3ead94e52435643719"

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
