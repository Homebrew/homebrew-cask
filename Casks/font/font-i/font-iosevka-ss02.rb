cask "font-iosevka-ss02" do
  version "33.2.8"
  sha256 "0628cbf9489d535123143c212e4d8721894685abfa013e06ab7392fdf0f81567"

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
