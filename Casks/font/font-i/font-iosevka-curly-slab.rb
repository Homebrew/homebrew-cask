cask "font-iosevka-curly-slab" do
  version "31.5.0"
  sha256 "23dc17e02d873793bfbdf59a852e389bec19605f0378b3469e040e8a9dd63182"

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
