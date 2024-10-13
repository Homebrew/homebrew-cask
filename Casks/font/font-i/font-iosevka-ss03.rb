cask "font-iosevka-ss03" do
  version "31.9.0"
  sha256 "55cc299cfff997a450bb16907b9d36ea03d7464c84ae302907fc90f873344c2e"

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
