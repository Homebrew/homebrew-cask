cask "font-iosevka-ss16" do
  version "34.4.0"
  sha256 "2ecb83ed22cf7026788aad54e097dffab50c49fa2b34beacade6b9a8433a2ad5"

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
