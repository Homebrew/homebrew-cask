cask "font-iosevka-curly-slab" do
  version "34.9.2"
  sha256 "d1bcaf3a5bf1b567af92f2da50521ee64777164a2b162381b852621800c9203a"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaCurlySlab-#{version}.zip"
  name "Iosevka Curly Slab"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaCurlySlab.ttc"

  zap :not_required
end
