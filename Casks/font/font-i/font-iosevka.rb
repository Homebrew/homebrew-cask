cask "font-iosevka" do
  version "33.3.1"
  sha256 "ec5c5c29b7cbd8ca87942d541396d89e665850bef3e355799901390f1be8a495"

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
