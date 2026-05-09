cask "font-iosevka-ss12" do
  version "34.5.0"
  sha256 "3c23a0a900d6ed3d0a1a1244175f02a90b307e30220573810237b9062c26d36b"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS12-#{version}.zip"
  name "Iosevka SS12"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS12.ttc"

  # No zap stanza required
end
