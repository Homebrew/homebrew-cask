cask "font-iosevka-curly-slab" do
  version "32.3.0"
  sha256 "73d0356d8d1c17a888812df87f493c9daa70e5b7644941cc286fc77544a27362"

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
