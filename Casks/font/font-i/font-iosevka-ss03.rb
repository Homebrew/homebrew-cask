cask "font-iosevka-ss03" do
  version "34.6.1"
  sha256 "8173bdbe52fcc4a5935a733e39da857657d561d6a4c9f840029f91235f1d8643"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS03-#{version}.zip"
  name "Iosevka SS03"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS03.ttc"

  # No zap stanza required
end
