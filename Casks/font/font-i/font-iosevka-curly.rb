cask "font-iosevka-curly" do
  version "34.6.3"
  sha256 "46d73d1dfccd1518a9c5100239b14c688a136491c6018222844f9410ba1f97cf"

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
