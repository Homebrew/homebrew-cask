cask "font-iosevka-ss05" do
  version "33.3.3"
  sha256 "9f58dfe80e5c845fc905a4a230885b555f57f1607f789abfb6e39ea1dec3b3e3"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS05-#{version}.zip"
  name "Iosevka SS05"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS05.ttc"

  # No zap stanza required
end
