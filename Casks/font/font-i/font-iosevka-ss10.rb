cask "font-iosevka-ss10" do
  version "33.2.0"
  sha256 "79bbdb63fdd1789d292019cdf82d2b4b442444e6871a5410b0e352ab6cdb3b92"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS10-#{version}.zip"
  name "Iosevka SS10"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS10.ttc"

  # No zap stanza required
end
