cask "font-iosevka-curly-slab" do
  version "32.2.0"
  sha256 "267e5726620aaa2242ae20c98611b3b28ba9e982ac27160de498f9a7816813e6"

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
