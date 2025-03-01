cask "font-iosevka-ss04" do
  version "33.0.0"
  sha256 "e1b3f0edf786dacfb49c3a29fcd8382d09768b95e0ad727526ff5605e8f37243"

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
