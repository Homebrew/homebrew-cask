cask "font-iosevka" do
  version "33.1.0"
  sha256 "d2ec5a9d94244d449a5bb9c3966245ada9416894f55c536830384be72c426889"

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
