cask "font-iosevka-ss02" do
  version "34.9.0"
  sha256 "ed72ccff9365e2f3b74b040c278a9188449d6cff230da83171bbe9211b648fa8"

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
