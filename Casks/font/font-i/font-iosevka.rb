cask "font-iosevka" do
  version "33.2.1"
  sha256 "37dd247a0cea2f73e7651be38f311792c872a5b8297440c5ee48839157cbd9cc"

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
