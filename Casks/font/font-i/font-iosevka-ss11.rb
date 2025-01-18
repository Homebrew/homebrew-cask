cask "font-iosevka-ss11" do
  version "32.4.0"
  sha256 "d2a41b9d03fb195fc8afd91627b555bd576f0d757748d75a18a21a90bc542e58"

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
