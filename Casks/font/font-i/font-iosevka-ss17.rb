cask "font-iosevka-ss17" do
  version "33.0.1"
  sha256 "ebb4bc95fc730df76ec5a63fd35662fe8a8c243f26a194941281eda99c73528c"

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
