cask "font-iosevka-ss14" do
  version "34.9.0"
  sha256 "ab5131c1cf3bd999f89813b2ae8699da338137f917a368a7d3f215a5ef49cf41"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS14-#{version}.zip"
  name "Iosevka SS14"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS14.ttc"

  # No zap stanza required
end
