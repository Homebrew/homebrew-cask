cask "font-iosevka-curly-slab" do
  version "34.6.3"
  sha256 "cfd3f7b790d093657326e3d11edeeace603b0e8d4224d4d50db0f42ebfbefeb8"

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
