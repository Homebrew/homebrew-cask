cask "font-iosevka-curly" do
  version "33.3.2"
  sha256 "f2f60b16901a6348997b36dcc1a1d79543a3fe6c539f2c34207ca2d34f08b82f"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaCurly-#{version}.zip"
  name "Iosevka Curly"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaCurly.ttc"

  # No zap stanza required
end
