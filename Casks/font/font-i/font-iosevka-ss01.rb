cask "font-iosevka-ss01" do
  version "34.3.0"
  sha256 "cf1627e4ffce8121589acacd8d42e5f6a6b56cc674ca22b2985445c49d39277c"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS01-#{version}.zip"
  name "Iosevka SS01"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS01.ttc"

  # No zap stanza required
end
