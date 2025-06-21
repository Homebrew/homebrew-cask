cask "font-iosevka-ss13" do
  version "33.2.5"
  sha256 "6f873d4f4c2306bffbe258861b5359188c7f61824abe2088c34b07e8b1105194"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS13-#{version}.zip"
  name "Iosevka SS13"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS13.ttc"

  # No zap stanza required
end
