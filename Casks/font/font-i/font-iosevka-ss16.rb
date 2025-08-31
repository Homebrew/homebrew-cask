cask "font-iosevka-ss16" do
  version "33.2.9"
  sha256 "8979d8f1f597699b6f914b9f7d9312b78f6fe5d5b9bda5bcd2a696adc43f4f30"

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
