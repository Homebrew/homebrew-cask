cask "font-iosevka-ss03" do
  version "33.2.9"
  sha256 "dea6480cffa8eb301b6fafde0b8b242fbbd7d44df0bfdd5792777eba2ff3e8fe"

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
