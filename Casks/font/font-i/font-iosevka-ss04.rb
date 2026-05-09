cask "font-iosevka-ss04" do
  version "34.5.0"
  sha256 "410f7c5d9284c6d0e5b0f06913e2e5a22c7f69c6fb2333cddf310af35cef7063"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS04-#{version}.zip"
  name "Iosevka SS04"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS04.ttc"

  # No zap stanza required
end
