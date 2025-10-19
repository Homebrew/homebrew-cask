cask "font-iosevka-ss11" do
  version "33.3.3"
  sha256 "d1f4295eecee54549c731b48a216e13b694423ae3118fd3c50d0b1ebfa011e4c"

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
