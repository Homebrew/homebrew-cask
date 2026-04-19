cask "font-iosevka-ss07" do
  version "34.4.0"
  sha256 "ea8ab22db7da9721f4862830eedd9c40c6073b663e517d484c87a151d8cca6ee"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS07-#{version}.zip"
  name "Iosevka SS07"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS07.ttc"

  # No zap stanza required
end
