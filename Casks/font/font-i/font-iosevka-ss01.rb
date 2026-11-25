cask "font-iosevka-ss01" do
  version "34.9.1"
  sha256 "e5e74b98a6c8fb37aa9b0779edd85b84cb9ddc988a27b9e664c419337b17682c"

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
