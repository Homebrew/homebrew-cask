cask "font-iosevka" do
  version "34.7.0"
  sha256 "aaab707b399828783341c7668ffca5e6e6bbe99ff418efed0bd1ee38ed5d143a"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-Iosevka-#{version}.zip"
  name "Iosevka"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "Iosevka.ttc"

  # No zap stanza required
end
