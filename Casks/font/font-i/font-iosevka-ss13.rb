cask "font-iosevka-ss13" do
  version "33.3.1"
  sha256 "4f57324266741101e060a62033cba6578d089d0ab87e16bf31c53a53f84c712b"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS13-#{version}.zip"
  name "Iosevka SS13"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS13.ttc"

  # No zap stanza required
end
