cask "font-iosevka-slab" do
  version "34.9.2"
  sha256 "64ebaf93d0c34e1d9f0b5932c0a23bd8940deb1f7926c488bb8648e6e953eaaf"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSlab-#{version}.zip"
  name "Iosevka Slab"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSlab.ttc"

  zap :not_required
end
