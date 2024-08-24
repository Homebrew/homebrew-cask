cask "font-iosevka-ss08" do
  version "31.4.0"
  sha256 "690dc405ab695144cff9cd82eae9344867037ec23cd4996663d42b5d3158b0c6"

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
