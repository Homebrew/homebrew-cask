cask "font-iosevka-curly" do
  version "31.9.1"
  sha256 "a1622aa363a64718f75db19df9d34727b4d3596fee47564fcf94048d857b05d0"

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
