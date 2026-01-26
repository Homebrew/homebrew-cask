cask "font-iosevka-ss09" do
  version "34.1.0"
  sha256 "85fc9d6ccac45d6195a53f3a8ea71ba9eb9cbda3a67f1fa00e1051ffc109fc81"

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
