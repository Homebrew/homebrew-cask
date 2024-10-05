cask "font-iosevka-ss17" do
  version "31.8.0"
  sha256 "126b5aae677110354a89247a2d0bcb2f1c8f71e16371ae269b1085bef9466e3f"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS17-#{version}.zip"
  name "Iosevka SS17"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS17.ttc"

  # No zap stanza required
end
