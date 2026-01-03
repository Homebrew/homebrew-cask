cask "font-iosevka-ss01" do
  version "34.0.0"
  sha256 "c0d3cbbf7c6484ba447baa9fa546bd50579f15184d91e6636a16876c3e05627d"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS01-#{version}.zip"
  name "Iosevka SS01"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS01.ttc"

  # No zap stanza required
end
