cask "font-iosevka-ss09" do
  version "32.2.1"
  sha256 "c95388297197be02834d1db54df5228fc4c920d2a70d7c2b9cb49cc47e2378b9"

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
