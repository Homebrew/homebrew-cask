cask "font-iosevka-curly" do
  version "33.3.3"
  sha256 "5585bc7d4423e470d96f4bd3bd605181f4398460a2d7afab0951e5c3160e58c0"

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
