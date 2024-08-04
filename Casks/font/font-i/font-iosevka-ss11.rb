cask "font-iosevka-ss11" do
  version "31.1.0"
  sha256 "9d0c6d26307527376526413b2fe8591b99878259cbe53cf3c55f0a0eb90b5165"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS11-#{version}.zip"
  name "Iosevka SS11"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS11.ttc"

  # No zap stanza required
end
