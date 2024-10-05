cask "font-iosevka-ss09" do
  version "31.8.0"
  sha256 "6d4f2c966799b90b94ba606f0b1989eb26d56c43ae7ffbeed54f8391dca64899"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS09-#{version}.zip"
  name "Iosevka SS09"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS09.ttc"

  # No zap stanza required
end
