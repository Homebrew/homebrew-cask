cask "font-iosevka-ss01" do
  version "34.6.1"
  sha256 "be5402bec71a576aa831ab0e2ec89f6142c92ead525df12bd3fc161f4b92f986"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS01-#{version}.zip"
  name "Iosevka SS01"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS01.ttc"

  # No zap stanza required
end
