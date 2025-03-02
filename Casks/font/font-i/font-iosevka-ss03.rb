cask "font-iosevka-ss03" do
  version "33.0.1"
  sha256 "326b01476752afddddd413633b48ec2e1487e1731bf6f3a700a3d4cb7f09b07d"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS03-#{version}.zip"
  name "Iosevka SS03"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS03.ttc"

  # No zap stanza required
end
