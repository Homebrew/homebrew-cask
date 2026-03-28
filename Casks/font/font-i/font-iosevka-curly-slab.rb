cask "font-iosevka-curly-slab" do
  version "34.3.0"
  sha256 "bfaea80e12445ab79af146617cbab7fd54ed95bd1f0285609acc4067e6f91423"

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
