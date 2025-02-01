cask "font-iosevka-curly" do
  version "32.5.0"
  sha256 "7ffa612001902d64ca962477ae798f2da1b4483f535609a0104681d11f23f843"

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
