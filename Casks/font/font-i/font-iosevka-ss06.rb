cask "font-iosevka-ss06" do
  version "33.2.4"
  sha256 "af07f14952b8b1014aada3dcb00b296cf4ac62e7234735ec59b4dd426316ff34"

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
