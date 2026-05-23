cask "font-iosevka-curly" do
  version "34.6.0"
  sha256 "b266d4df585a5c6152111062e67cf9ed2d628ec0ce07a8164d91eca7fb53debd"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaCurly-#{version}.zip"
  name "Iosevka Curly"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaCurly.ttc"

  # No zap stanza required
end
