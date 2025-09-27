cask "font-iosevka-ss18" do
  version "33.3.1"
  sha256 "c63bd55968111fb32b20e752504c50fc3ce9e234b7b65db10a8d4e3295b21125"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS18-#{version}.zip"
  name "Iosevka SS18"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS18.ttc"

  # No zap stanza required
end
