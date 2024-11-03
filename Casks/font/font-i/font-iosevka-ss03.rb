cask "font-iosevka-ss03" do
  version "32.0.1"
  sha256 "2c1af852da5a0f57a015e4723e8055c692f12e3ebd1b1419e3504c0078cc06f0"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS03-#{version}.zip"
  name "Iosevka SS03"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS03.ttc"

  # No zap stanza required
end
