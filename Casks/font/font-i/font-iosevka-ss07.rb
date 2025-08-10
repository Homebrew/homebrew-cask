cask "font-iosevka-ss07" do
  version "33.2.8"
  sha256 "cdf57925f71e6e0c854d13903a37f12d8c5cb2508906d0217af4abb4e8dd3985"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS07-#{version}.zip"
  name "Iosevka SS07"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS07.ttc"

  # No zap stanza required
end
