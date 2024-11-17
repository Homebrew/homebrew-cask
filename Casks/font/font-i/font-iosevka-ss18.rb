cask "font-iosevka-ss18" do
  version "32.1.0"
  sha256 "9b854d0a78ceebc6b9b2ae3ad19704023e80822cbd7c848a2c8e2ec59c54d311"

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
