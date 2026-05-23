cask "font-iosevka-ss02" do
  version "34.6.0"
  sha256 "96ef18215043e227554e2d6687f1905f128648f3e8f9449fa78cc22b26a087d7"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS02-#{version}.zip"
  name "Iosevka SS02"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS02.ttc"

  # No zap stanza required
end
