cask "font-iosevka-ss16" do
  version "33.2.0"
  sha256 "8c4fd4fe68155e329a1a9c0686e80ce8797f55eee1083db583aeefa0140af08e"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS16-#{version}.zip"
  name "Iosevka SS16"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS16.ttc"

  # No zap stanza required
end
