cask "font-iosevka-curly" do
  version "34.9.1"
  sha256 "5a6e34f49bcbf201093d336ddad50ffb253ab9eb4db33df704b25bb240ef99c1"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaCurly-#{version}.zip"
  name "Iosevka Curly"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaCurly.ttc"

  zap :not_required
end
