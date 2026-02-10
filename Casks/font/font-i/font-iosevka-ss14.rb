cask "font-iosevka-ss14" do
  version "34.1.0"
  sha256 "2e0a5e12d1e7684d2ed2e10f738c51a19c6d1cb2afa439a94cb4273f27adcbec"

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
