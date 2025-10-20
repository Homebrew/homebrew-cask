cask "font-iosevka-ss16" do
  version "33.3.3"
  sha256 "d7e6773f97fb00fb619a63182bf1463d658af4e41af0e154f21827b0a6ee4aba"

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
