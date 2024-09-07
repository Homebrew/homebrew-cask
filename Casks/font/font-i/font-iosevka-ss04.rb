cask "font-iosevka-ss04" do
  version "31.6.0"
  sha256 "4ccae93bed5db916088709fe448a1d1d3cbf49ef6cebf2274b88f01a8344e6c9"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS04-#{version}.zip"
  name "Iosevka SS04"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS04.ttc"

  # No zap stanza required
end
