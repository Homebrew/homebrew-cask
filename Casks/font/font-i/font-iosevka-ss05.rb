cask "font-iosevka-ss05" do
  version "33.0.1"
  sha256 "715d93ef5110377e0d0c7c98ee1674aa7ebd16742039a5657bb6bf79ec7c055d"

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
