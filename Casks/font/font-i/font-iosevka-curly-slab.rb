cask "font-iosevka-curly-slab" do
  version "33.3.5"
  sha256 "1828cbf43016cdfc4b7c132c6ac022de07cd6206c023b3f707f2642e04ab71e8"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaCurlySlab-#{version}.zip"
  name "Iosevka Curly Slab"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaCurlySlab.ttc"

  # No zap stanza required
end
