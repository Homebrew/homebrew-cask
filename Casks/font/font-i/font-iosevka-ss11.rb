cask "font-iosevka-ss11" do
  version "34.1.0"
  sha256 "f9f4395ddae67043ef76dad69a65bdecab1af42873b2ff32598b6cb78461bf21"

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
