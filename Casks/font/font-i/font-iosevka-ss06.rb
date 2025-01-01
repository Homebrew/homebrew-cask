cask "font-iosevka-ss06" do
  version "32.3.1"
  sha256 "6fdef925fdc0a67ce8e75629a67f07e3a62f14d2d4da313bc97b61e8d549a6b9"

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
