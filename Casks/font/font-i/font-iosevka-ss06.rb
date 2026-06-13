cask "font-iosevka-ss06" do
  version "34.6.2"
  sha256 "1a109748a3821f826b8116e91e24907c4e6520a07144ba952a1f4ba6ce6d431a"

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
