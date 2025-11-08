cask "font-iosevka-ss12" do
  version "33.3.4"
  sha256 "71d788b98a9eb5649a9bea5e72ce959040712d49f5f4bc60332e07db8d3d6a6c"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS12-#{version}.zip"
  name "Iosevka SS12"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS12.ttc"

  # No zap stanza required
end
