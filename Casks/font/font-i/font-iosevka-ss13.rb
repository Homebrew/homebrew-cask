cask "font-iosevka-ss13" do
  version "34.8.1"
  sha256 "275d89db596e7f7d6bf3ac04fed7288ee5ecd28e3d7e2182a361ef0b00690083"

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
