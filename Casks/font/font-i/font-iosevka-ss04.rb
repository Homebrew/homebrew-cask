cask "font-iosevka-ss04" do
  version "33.2.2"
  sha256 "649f0fc91dace1b99b86904c0fe0b34177c0a2e5219f670e790a85c2fa0fedec"

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
