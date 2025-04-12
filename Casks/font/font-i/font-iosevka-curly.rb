cask "font-iosevka-curly" do
  version "33.2.1"
  sha256 "ce25b0078e2fac9c66a9888a8d15323ebd9fbd6a608f5d6c0ec822a5e38561ea"

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
