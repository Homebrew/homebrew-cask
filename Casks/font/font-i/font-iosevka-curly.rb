cask "font-iosevka-curly" do
  version "34.0.0"
  sha256 "34c7bb88f953df4f6a405fc785cf82cefd3d2f2b8cd9ccee60bfffda29c15111"

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
