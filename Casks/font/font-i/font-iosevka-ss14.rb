cask "font-iosevka-ss14" do
  version "32.1.0"
  sha256 "17aa1e1eaff927c5b6fe1e3d93bb5776c16189980955f3f7f1c116d5463be8bb"

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
