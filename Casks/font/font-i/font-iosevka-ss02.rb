cask "font-iosevka-ss02" do
  version "32.2.1"
  sha256 "8bcc97cf9fb3089bdecd919f732228966761e22691b6b2b9b4f371f0138052f0"

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
