cask "font-iosevka-ss10" do
  version "31.8.0"
  sha256 "5402c11fe71d5b2950f22161e97ffdaaa6851a5bf6824d6a308bd3b32de843c5"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS10-#{version}.zip"
  name "Iosevka SS10"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS10.ttc"

  # No zap stanza required
end
