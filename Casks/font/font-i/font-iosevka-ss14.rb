cask "font-iosevka-ss14" do
  version "32.3.1"
  sha256 "57b82b76b198751acb72808a81af3b21b6db5458373ff6145d3f62b4dc8c9be5"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS14-#{version}.zip"
  name "Iosevka SS14"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS14.ttc"

  # No zap stanza required
end
