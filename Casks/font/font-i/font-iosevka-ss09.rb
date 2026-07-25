cask "font-iosevka-ss09" do
  version "34.7.0"
  sha256 "533c09a121d8da5e83e618c3ab6fd56fc36149a74a804ff629f347ef6ca09fd3"

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
