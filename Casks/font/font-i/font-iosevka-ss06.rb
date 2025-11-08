cask "font-iosevka-ss06" do
  version "33.3.4"
  sha256 "783126f1f61a4846402b695e88a92d83cf503d959521c5a0741219c926e647bb"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS06-#{version}.zip"
  name "Iosevka SS06"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS06.ttc"

  # No zap stanza required
end
