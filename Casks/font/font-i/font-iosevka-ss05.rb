cask "font-iosevka-ss05" do
  version "34.6.3"
  sha256 "958b5d9ca68460105482c9581c8e742c71d23c95546dcddc1d57f80ae45b5478"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS05-#{version}.zip"
  name "Iosevka SS05"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS05.ttc"

  # No zap stanza required
end
