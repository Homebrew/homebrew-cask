cask "font-iosevka-ss11" do
  version "31.6.1"
  sha256 "ad4259e5f8130ebc1046f8ca78cdfabee7d30626044b85afb3cb1df423afe9a4"

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
