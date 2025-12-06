cask "font-iosevka-ss08" do
  version "33.3.6"
  sha256 "3003ffe201d804e9214b864ab8a42c24c0cea5a77d5323b00ae2457b371530f1"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS08-#{version}.zip"
  name "Iosevka SS08"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS08.ttc"

  # No zap stanza required
end
