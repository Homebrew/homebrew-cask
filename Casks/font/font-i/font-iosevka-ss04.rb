cask "font-iosevka-ss04" do
  version "31.7.1"
  sha256 "1c01c89a36ab7fd31d82fe81b6c401d233b3ec49294cb54cdc4fbe6859616daa"

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
