cask "font-iosevka-ss03" do
  version "34.6.3"
  sha256 "38fb03eb2dc60a273eec686b01b511917297c049aff7cc399405316e320d2a20"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS03-#{version}.zip"
  name "Iosevka SS03"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS03.ttc"

  # No zap stanza required
end
