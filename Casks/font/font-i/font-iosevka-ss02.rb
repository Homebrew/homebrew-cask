cask "font-iosevka-ss02" do
  version "33.2.9"
  sha256 "72897ffab0ea210c97015db070c385f001a57b014ff13cdaa2423b5680e5c3d9"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS02-#{version}.zip"
  name "Iosevka SS02"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS02.ttc"

  # No zap stanza required
end
