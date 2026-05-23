cask "font-iosevka-curly-slab" do
  version "34.6.0"
  sha256 "435d29bda6285c49a74f3af15f45c7b1eee7620d0d9923fbceef3a18a011bf30"

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
