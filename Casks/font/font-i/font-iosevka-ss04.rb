cask "font-iosevka-ss04" do
  version "32.3.0"
  sha256 "4ca76f2f6934fc41ee5fa56c1f4efc000fcc996c7fcd5b940ba68ea95af57e1e"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS04-#{version}.zip"
  name "Iosevka SS04"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS04.ttc"

  # No zap stanza required
end
