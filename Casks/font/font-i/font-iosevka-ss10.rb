cask "font-iosevka-ss10" do
  version "33.3.1"
  sha256 "8c9592ce7847d34719f27b011457b7bc31598bde9c430a030a5d03f31cd3edc9"

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
