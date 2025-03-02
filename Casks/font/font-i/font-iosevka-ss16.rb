cask "font-iosevka-ss16" do
  version "33.0.1"
  sha256 "7002335750191826e48355f72a689dda834f6a401b42ff8561aacd3f9f3a0ff5"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS16-#{version}.zip"
  name "Iosevka SS16"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS16.ttc"

  # No zap stanza required
end
