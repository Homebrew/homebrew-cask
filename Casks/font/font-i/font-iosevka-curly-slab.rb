cask "font-iosevka-curly-slab" do
  version "33.2.7"
  sha256 "c6dfcef8c0ca413fd0318c81fd62b08cac47cd1a3d7ee8dbf536f1a9cec66843"

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
