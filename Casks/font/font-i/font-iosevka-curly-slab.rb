cask "font-iosevka-curly-slab" do
  version "33.3.1"
  sha256 "95e280cc6fc17242c15008a79bcb5785b6f85ae19cca5ddd4f7257bbff4ea066"

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
