cask "font-iosevka-ss14" do
  version "33.2.7"
  sha256 "279210d3ab1ddd7ac1766637ef80d00a0dc1e8601485be6b9673c27014a3d0e4"

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
