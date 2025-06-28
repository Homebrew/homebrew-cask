cask "font-iosevka-ss10" do
  version "33.2.6"
  sha256 "2cddb861f610dbc68273e830f414fc4b4d215361b0871e5598713668da77d339"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS10-#{version}.zip"
  name "Iosevka SS10"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS10.ttc"

  # No zap stanza required
end
