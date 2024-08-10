cask "font-iosevka-ss04" do
  version "31.2.0"
  sha256 "8e1f7bf03d31ef3c50c393df0591ffcb3192ac51f036520a882f27db00dd64ad"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS04-#{version}.zip"
  name "Iosevka SS04"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS04.ttc"

  # No zap stanza required
end
