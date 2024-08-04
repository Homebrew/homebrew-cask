cask "font-iosevka" do
  version "31.1.0"
  sha256 "781116f7a77de48e286b18292b2a746fda10aef5a7de6428a96fc7681c6ba0c3"

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
