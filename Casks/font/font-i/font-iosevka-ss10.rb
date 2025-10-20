cask "font-iosevka-ss10" do
  version "33.3.3"
  sha256 "62ef68b883899ddee1d215c7887b03bbe061fc7cb87328cff3f34d933c15c0e7"

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
