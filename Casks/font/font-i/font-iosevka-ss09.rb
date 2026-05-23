cask "font-iosevka-ss09" do
  version "34.6.0"
  sha256 "3f8150bea3a9700175e7460f3f6bae5167f72327755c74bf541efa2a59458bc3"

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
