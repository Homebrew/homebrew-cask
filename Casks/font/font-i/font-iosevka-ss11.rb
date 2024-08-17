cask "font-iosevka-ss11" do
  version "31.3.0"
  sha256 "1960ad6130ebbd503b40324944c5ea0c9a75729ffec03bda87611da472ebfc06"

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
