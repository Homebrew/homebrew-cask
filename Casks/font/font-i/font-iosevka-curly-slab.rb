cask "font-iosevka-curly-slab" do
  version "32.2.1"
  sha256 "8cd09bfc4a6e4eee0595ea5731265e8b8e2fb0f9d4622a604a8c6aaf3cd7cad8"

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
