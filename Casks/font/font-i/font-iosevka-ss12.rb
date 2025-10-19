cask "font-iosevka-ss12" do
  version "33.3.3"
  sha256 "bc014635213387530c5982b6c79e9174246b98239356bc7bda9f6d75820cfdac"

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
