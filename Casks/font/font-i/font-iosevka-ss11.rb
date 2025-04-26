cask "font-iosevka-ss11" do
  version "33.2.2"
  sha256 "17ba47f7c9397eb3893a03b3275ab699c6ea59e11690b2d7d84f01314f2c568a"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS11-#{version}.zip"
  name "Iosevka SS11"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS11.ttc"

  # No zap stanza required
end
