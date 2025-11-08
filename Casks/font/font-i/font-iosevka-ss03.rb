cask "font-iosevka-ss03" do
  version "33.3.4"
  sha256 "74ec6f6631d45b67a5769fa13113d427baccabcb5ce261e46a25f954748e68cd"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS03-#{version}.zip"
  name "Iosevka SS03"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS03.ttc"

  # No zap stanza required
end
