cask "font-iosevka-ss14" do
  version "33.3.3"
  sha256 "0990c38a929a458fb745d5801dfc013dcb6f2d02a4ce0bb8d8c024755f06f521"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS14-#{version}.zip"
  name "Iosevka SS14"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS14.ttc"

  # No zap stanza required
end
