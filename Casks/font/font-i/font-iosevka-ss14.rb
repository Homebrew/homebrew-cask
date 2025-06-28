cask "font-iosevka-ss14" do
  version "33.2.6"
  sha256 "7bd5ac6edf8f33f768b561ea07bd0da4e553075d8b27871225afa59a3b41a6e3"

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
