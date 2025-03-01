cask "font-iosevka" do
  version "33.0.0"
  sha256 "f74b237e4b4dfa3c01f754a9f9a0077f6517ad0922b58c78a40e782ffd28cb4e"

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
