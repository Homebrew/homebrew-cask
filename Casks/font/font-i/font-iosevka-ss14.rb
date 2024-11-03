cask "font-iosevka-ss14" do
  version "32.0.1"
  sha256 "aba1473e65334a1194cae2c76b7e42df321e6501ce3628ed9a2a5f5a1f85bece"

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
