cask "font-iosevka-ss12" do
  version "31.1.0"
  sha256 "8765a0db2d960c877f51a708e572d11d23f41dc11b9f6712f8f2808d77816a16"

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
