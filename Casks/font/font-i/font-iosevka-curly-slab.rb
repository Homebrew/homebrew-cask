cask "font-iosevka-curly-slab" do
  version "33.2.4"
  sha256 "5028705a445810752d2f1746e798478f5794ecf4071a887984b519a4ce55976b"

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
