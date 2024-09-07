cask "font-iosevka-curly-slab" do
  version "31.6.0"
  sha256 "dbd51bc3e399573651e90bd6f376213447b7c8a33640d102962160af44265ce2"

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
