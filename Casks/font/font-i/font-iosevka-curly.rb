cask "font-iosevka-curly" do
  version "34.1.0"
  sha256 "70ac43efcb702ded3929e124f4aa4c06745023af697709f433693b3433b5d5cc"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaCurly-#{version}.zip"
  name "Iosevka Curly"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaCurly.ttc"

  # No zap stanza required
end
