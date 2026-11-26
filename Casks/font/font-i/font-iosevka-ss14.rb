cask "font-iosevka-ss14" do
  version "34.9.2"
  sha256 "e95ec78cf340165a11e3827cbdc5020f302981bd8b4658bee2ac0520c7eeeb74"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS14-#{version}.zip"
  name "Iosevka SS14"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS14.ttc"

  zap :not_required
end
