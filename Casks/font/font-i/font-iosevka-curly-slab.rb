cask "font-iosevka-curly-slab" do
  version "33.2.6"
  sha256 "67e20e3f6c449d7fe1dc05f06cdd70f2665a2a4ad4905006b71e2ffa8b52103e"

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
