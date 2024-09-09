cask "font-iosevka-ss04" do
  version "31.6.1"
  sha256 "981e8dad8d9787549a76705f9553323ec2ad1b2a681672039ec75e57b1a70843"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS04-#{version}.zip"
  name "Iosevka SS04"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS04.ttc"

  # No zap stanza required
end
