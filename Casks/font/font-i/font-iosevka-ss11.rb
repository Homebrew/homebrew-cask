cask "font-iosevka-ss11" do
  version "31.7.1"
  sha256 "f5782ecc40b835acd8a9c0433f479026622303204bf26fc3d3c628417aa90a16"

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
