cask "font-iosevka-ss04" do
  version "34.9.2"
  sha256 "d6303dfdf75417ba6569114437bfb3e985b1f07c703cafb13c4614e19dc92247"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS04-#{version}.zip"
  name "Iosevka SS04"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS04.ttc"

  zap :not_required
end
