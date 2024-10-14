cask "font-iosevka-ss07" do
  version "31.9.1"
  sha256 "414f20b2db21aeff8edb8858e48ea4c586622b1c27c65d3a4d35eabf898e8d2d"

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
