cask "font-iosevka-ss11" do
  version "34.6.2"
  sha256 "80677b0000a55db82b9c7eeba3e9fa96f8ed39c1257651bd382266012e96b91c"

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
