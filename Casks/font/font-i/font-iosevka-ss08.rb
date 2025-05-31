cask "font-iosevka-ss08" do
  version "33.2.4"
  sha256 "3abb2864650131b425d3e672e01811f32bcc7b5730eaeb896ef2873553eba80f"

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
