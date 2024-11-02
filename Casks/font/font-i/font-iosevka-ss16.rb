cask "font-iosevka-ss16" do
  version "32.0.0"
  sha256 "37a4b25211589c08fded792e5b0064925afcb31f987ce08a6c2ec9eb5749703e"

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
