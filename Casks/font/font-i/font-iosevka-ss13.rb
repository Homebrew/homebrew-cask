cask "font-iosevka-ss13" do
  version "33.2.7"
  sha256 "d5a1b1f2635dc5f2f98a2d3782bf82d80b66ca949ca240c5b723b6d01841f3fe"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS13-#{version}.zip"
  name "Iosevka SS13"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS13.ttc"

  # No zap stanza required
end
