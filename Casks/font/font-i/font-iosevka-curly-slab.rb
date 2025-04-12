cask "font-iosevka-curly-slab" do
  version "33.2.1"
  sha256 "3c55da9cbb2b383b5e7a1ab5444e5717fb2e85b88325e9987549f0c9a2dc67d6"

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
