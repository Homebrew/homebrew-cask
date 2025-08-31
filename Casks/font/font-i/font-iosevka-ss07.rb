cask "font-iosevka-ss07" do
  version "33.2.9"
  sha256 "6930b84500ad97deaa78528448131b00014a08dd808926fdf70a1d90861611d1"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS07-#{version}.zip"
  name "Iosevka SS07"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS07.ttc"

  # No zap stanza required
end
