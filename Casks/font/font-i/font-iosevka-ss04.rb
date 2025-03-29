cask "font-iosevka-ss04" do
  version "33.2.0"
  sha256 "7977ecafb8fc29050d8a386a13a1c89ac2b58b02e5b72cf421383179d9f1f94d"

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
