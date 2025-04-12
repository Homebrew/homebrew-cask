cask "font-iosevka-ss11" do
  version "33.2.1"
  sha256 "1e5af11bafae58baa2e9193bb5d69810e12b4d4c149d4bf1c84015fc59a13202"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS11-#{version}.zip"
  name "Iosevka SS11"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS11.ttc"

  # No zap stanza required
end
