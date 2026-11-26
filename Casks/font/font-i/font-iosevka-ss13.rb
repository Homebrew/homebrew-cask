cask "font-iosevka-ss13" do
  version "34.9.2"
  sha256 "c86cd5bc968a22cfe65b6c122f75abe581e3107ab7631ee5eae65490351f9fb4"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS13-#{version}.zip"
  name "Iosevka SS13"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS13.ttc"

  zap :not_required
end
