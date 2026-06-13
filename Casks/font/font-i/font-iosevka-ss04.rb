cask "font-iosevka-ss04" do
  version "34.6.2"
  sha256 "f715b95f9f7837971767770806bc6a5e3b56813ebd023b4c60d9902ddd12fa19"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS04-#{version}.zip"
  name "Iosevka SS04"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS04.ttc"

  # No zap stanza required
end
