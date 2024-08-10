cask "font-iosevka-ss10" do
  version "31.2.0"
  sha256 "2f391f6b5bb4f787ff039a58c1fc0fec222d56017bcdebf4935052fdf4ee49b7"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS10-#{version}.zip"
  name "Iosevka SS10"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS10.ttc"

  # No zap stanza required
end
