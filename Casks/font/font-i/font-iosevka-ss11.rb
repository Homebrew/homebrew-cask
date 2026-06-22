cask "font-iosevka-ss11" do
  version "34.6.3"
  sha256 "93f3f23469bd7732e4d5febfda33f4413a634c8d29d022a1949f30e74e0278fd"

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
