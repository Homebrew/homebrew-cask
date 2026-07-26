cask "font-iosevka" do
  version "34.8.0"
  sha256 "fd64d3e261225a53029775c755451bce89a20030afa19711f547677c0845025c"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-Iosevka-#{version}.zip"
  name "Iosevka"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "Iosevka.ttc"

  # No zap stanza required
end
