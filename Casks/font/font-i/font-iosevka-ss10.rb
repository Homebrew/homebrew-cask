cask "font-iosevka-ss10" do
  version "31.9.0"
  sha256 "eb175c31d4da816e2104bf641cd9ffa193b2d5533d2521d0600e06bf0867b018"

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
