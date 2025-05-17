cask "font-iosevka-ss14" do
  version "33.2.3"
  sha256 "96c7caf4a991266f4fe80135fb43428b46bfd640336066514b7dfdbf4d4eebc6"

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
