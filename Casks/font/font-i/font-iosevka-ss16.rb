cask "font-iosevka-ss16" do
  version "34.7.0"
  sha256 "680c9c3a690cc184779f0ce5f2127b9c3db94d425923f81196493b5d616868e0"

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
