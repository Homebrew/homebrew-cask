cask "font-iosevka-curly-slab" do
  version "31.7.0"
  sha256 "794b650dd72bf2656c26f7e6302d0c4d44f11234ff3b9e80478fa9c4fcb01375"

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
