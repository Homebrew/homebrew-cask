cask "font-iosevka-ss11" do
  version "33.2.0"
  sha256 "b355977f11e58fedaafc29db6cb5228ae541030691c4c309b7087670f2bc3787"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS11-#{version}.zip"
  name "Iosevka SS11"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS11.ttc"

  # No zap stanza required
end
