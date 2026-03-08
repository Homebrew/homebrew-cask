cask "font-iosevka-ss06" do
  version "34.2.1"
  sha256 "1b264271f20d109444f98a83020b71a47e2f6b5d7a1c8ef0ade46db45e011c47"

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
