cask "font-iosevka-curly-slab" do
  version "33.2.9"
  sha256 "220c38bd5cff9251708cd356e0db9d11b2a70dabd12263f03f4ae8e5246dd893"

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
