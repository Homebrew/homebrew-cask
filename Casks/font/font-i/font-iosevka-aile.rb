cask "font-iosevka-aile" do
  version "34.8.0"
  sha256 "5993bc2675eda5062e962a7d336b6637ec25b1cbf61de287e6f08025b41ba9ad"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaAile-#{version}.zip"
  name "Iosevka Aile"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaAile.ttc"

  # No zap stanza required
end
