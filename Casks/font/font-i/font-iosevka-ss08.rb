cask "font-iosevka-ss08" do
  version "33.3.2"
  sha256 "b611e4542a64b41269c29565aa4d8106a4267de1f6452842fd180466407292b6"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS08-#{version}.zip"
  name "Iosevka SS08"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS08.ttc"

  # No zap stanza required
end
