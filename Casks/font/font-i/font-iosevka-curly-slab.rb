cask "font-iosevka-curly-slab" do
  version "33.0.0"
  sha256 "808c41b23df36108ebaaa4c3550d0e4ec6f341f6c83fceeb055f0c1336ea73d9"

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
