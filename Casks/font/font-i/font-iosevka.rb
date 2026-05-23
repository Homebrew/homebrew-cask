cask "font-iosevka" do
  version "34.6.0"
  sha256 "fef0e114ca8f28c709456fb4c151008653ce37356eeb7595621a47ffbd0c8cf2"

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
