cask "font-iosevka-ss07" do
  version "34.3.0"
  sha256 "f4ed91bf5fc8dacd6774a79480c2704c5bc994a02013d30446cf603dca05d61e"

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
