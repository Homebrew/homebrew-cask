cask "font-iosevka-ss12" do
  version "33.2.0"
  sha256 "570bf8e74678ad4198b3d1704f0796b7f589d605981304f57e540646a0e8ef6e"

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
