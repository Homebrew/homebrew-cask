cask "font-iosevka-ss01" do
  version "34.9.2"
  sha256 "5d192709475cac5f90f40e10209dab0ca55d501203bfd442bb8bea51575af3c9"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS01-#{version}.zip"
  name "Iosevka SS01"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS01.ttc"

  zap :not_required
end
