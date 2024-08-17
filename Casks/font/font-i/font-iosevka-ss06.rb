cask "font-iosevka-ss06" do
  version "31.3.0"
  sha256 "a634ffa74edd4e3da185482312ce66ae6c8a45519357062dadbc3dd39e0ab64a"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS06-#{version}.zip"
  name "Iosevka SS06"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS06.ttc"

  # No zap stanza required
end
