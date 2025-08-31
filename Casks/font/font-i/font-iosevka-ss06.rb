cask "font-iosevka-ss06" do
  version "33.2.9"
  sha256 "d84bf31cda0811e5c0783a010388482230713118033ff0f1d510dd48fc883c4e"

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
