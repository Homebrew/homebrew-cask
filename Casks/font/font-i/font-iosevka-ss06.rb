cask "font-iosevka-ss06" do
  version "33.2.1"
  sha256 "31ff3603d2b7b9028463b0f4736cbce55d4f8b85c0804ad72b53ed82db64bec2"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS06-#{version}.zip"
  name "Iosevka SS06"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS06.ttc"

  # No zap stanza required
end
