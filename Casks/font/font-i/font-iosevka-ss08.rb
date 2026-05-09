cask "font-iosevka-ss08" do
  version "34.5.0"
  sha256 "9f019c8b2b8fcaee499de3a811d2984383b4c86b4f8aa4d7c9a2dcbc22068c44"

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
