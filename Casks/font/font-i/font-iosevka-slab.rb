cask "font-iosevka-slab" do
  version "34.6.0"
  sha256 "5acb846ab93ae8adafb95ff3e70fa3e6551eae8a702e1378a758859a9da64e94"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSlab-#{version}.zip"
  name "Iosevka Slab"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSlab.ttc"

  # No zap stanza required
end
