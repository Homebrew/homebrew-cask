cask "font-iosevka-ss16" do
  version "31.5.0"
  sha256 "4733993108ed5dbb9ef9c8fe1ec8e40ee79b86125bc48cd3254369ef0b4a4b1d"

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
