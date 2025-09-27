cask "font-iosevka-ss17" do
  version "33.3.1"
  sha256 "50bed9424552dc34238995405c8340af63b3912d781ac4f292a6f031b4e1f941"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS17-#{version}.zip"
  name "Iosevka SS17"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS17.ttc"

  # No zap stanza required
end
