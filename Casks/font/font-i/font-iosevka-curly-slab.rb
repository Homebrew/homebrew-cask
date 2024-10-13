cask "font-iosevka-curly-slab" do
  version "31.9.0"
  sha256 "9775985750b54dd697b1f42ff338a8078d3cfd98839a730e2950d5dd3189d2fc"

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
