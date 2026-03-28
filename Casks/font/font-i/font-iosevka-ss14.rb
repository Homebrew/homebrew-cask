cask "font-iosevka-ss14" do
  version "34.3.0"
  sha256 "3c7e52ab7af0590e4af4b711152382dc64bb41acc18bb431301b101f93602843"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS14-#{version}.zip"
  name "Iosevka SS14"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS14.ttc"

  # No zap stanza required
end
