cask "font-iosevka-ss14" do
  version "31.1.0"
  sha256 "a37a9c88b511a14af944254730650f791b77ba04c1a814f2d777ee42ec154199"

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
