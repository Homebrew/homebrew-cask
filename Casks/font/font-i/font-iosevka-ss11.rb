cask "font-iosevka-ss11" do
  version "33.2.9"
  sha256 "7cfdfffa4e9e70df2f792001693e1e3273fbed89cfbf473f880fa6a54e4f340a"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS11-#{version}.zip"
  name "Iosevka SS11"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS11.ttc"

  # No zap stanza required
end
