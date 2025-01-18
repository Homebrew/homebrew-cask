cask "font-iosevka-ss06" do
  version "32.4.0"
  sha256 "91c8118aca69ed0c39cd41b38ea21c574086476988b3be97cc18d7cae7adaf74"

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
