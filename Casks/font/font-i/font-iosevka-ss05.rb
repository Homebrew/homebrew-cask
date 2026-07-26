cask "font-iosevka-ss05" do
  version "34.8.0"
  sha256 "2b9550c5376e1e5b9314653a1662747fe21bfd82b390a64354e15bcc6bac6e04"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS05-#{version}.zip"
  name "Iosevka SS05"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS05.ttc"

  # No zap stanza required
end
