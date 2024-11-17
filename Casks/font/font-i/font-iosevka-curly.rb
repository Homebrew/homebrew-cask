cask "font-iosevka-curly" do
  version "32.1.0"
  sha256 "38776f5c2212e9d939b85b360e11b818c2b22dd696ab8b76d3727eb53e47b34e"

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
