cask "font-iosevka-ss01" do
  version "33.1.0"
  sha256 "afcd7b5ca2a6188b0ca799d34da24e306eababb0c91657954308ce7426a6134a"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS01-#{version}.zip"
  name "Iosevka SS01"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS01.ttc"

  # No zap stanza required
end
