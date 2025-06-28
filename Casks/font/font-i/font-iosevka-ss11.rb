cask "font-iosevka-ss11" do
  version "33.2.6"
  sha256 "1b1a4a78f3ebf7f560cb60cd0076f9d859fa784e088deeba5d4051fd48097878"

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
