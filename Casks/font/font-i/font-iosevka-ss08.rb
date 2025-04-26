cask "font-iosevka-ss08" do
  version "33.2.2"
  sha256 "9b9792c9a0fa84158539ea5651c356538f86a5566b855c97ccc99c2d6b1c1958"

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
