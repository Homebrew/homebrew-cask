cask "font-iosevka-curly-slab" do
  version "34.8.1"
  sha256 "4aecfbf4a433fd4591805ac32e492b1f3956de572c9ef8b6ab5818a7aa5b2a79"

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
