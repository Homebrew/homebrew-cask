cask "font-iosevka-ss17" do
  version "34.8.0"
  sha256 "c4104880d96b38cbc65441673e1fd4033efb8bf0844f6343fca212d13e4cadde"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS17-#{version}.zip"
  name "Iosevka SS17"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS17.ttc"

  # No zap stanza required
end
