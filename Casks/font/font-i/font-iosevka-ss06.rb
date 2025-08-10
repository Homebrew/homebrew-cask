cask "font-iosevka-ss06" do
  version "33.2.8"
  sha256 "1b9d4a482650874c0b3df1e6cf746b195653a5a89a3ad8a5b1fb73963e928267"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS06-#{version}.zip"
  name "Iosevka SS06"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS06.ttc"

  # No zap stanza required
end
