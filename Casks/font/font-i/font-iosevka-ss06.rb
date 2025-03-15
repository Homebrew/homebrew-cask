cask "font-iosevka-ss06" do
  version "33.1.0"
  sha256 "18523c6b0234031467173ac446c9df2296a830f8a38eb1baf8417eca3477502e"

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
