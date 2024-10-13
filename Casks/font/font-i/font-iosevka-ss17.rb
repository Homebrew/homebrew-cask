cask "font-iosevka-ss17" do
  version "31.9.0"
  sha256 "c505c3d5609e87897015550e2ed46b1d72f3e026f9fdef821ddae68d4408dabd"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS17-#{version}.zip"
  name "Iosevka SS17"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS17.ttc"

  # No zap stanza required
end
