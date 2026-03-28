cask "font-iosevka-ss12" do
  version "34.3.0"
  sha256 "2ed009532a010380c3d22989e28d0a15e678693c1d278b4f2db5542fa029a9c7"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS12-#{version}.zip"
  name "Iosevka SS12"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS12.ttc"

  # No zap stanza required
end
