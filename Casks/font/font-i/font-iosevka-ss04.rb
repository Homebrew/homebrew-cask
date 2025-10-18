cask "font-iosevka-ss04" do
  version "33.3.2"
  sha256 "bf7b4c08321f7ae371aa32748c544435b16ecc4f63c854a42b1597779a747736"

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
