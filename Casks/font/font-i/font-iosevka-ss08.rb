cask "font-iosevka-ss08" do
  version "34.6.2"
  sha256 "ba233436587b7fdfe27e6828848d96b377485849eb72b2b4f33fda3a613ddbc6"

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
