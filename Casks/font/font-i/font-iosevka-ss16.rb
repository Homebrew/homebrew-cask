cask "font-iosevka-ss16" do
  version "33.2.1"
  sha256 "9db8b73fdefa09265285ec2c78c2ae4bea2df413caa41d567cc33e95194f202a"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS16-#{version}.zip"
  name "Iosevka SS16"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS16.ttc"

  # No zap stanza required
end
