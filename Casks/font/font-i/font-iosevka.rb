cask "font-iosevka" do
  version "33.3.5"
  sha256 "88b6d7e2442b39ef98ce4c352018a90906aa1eea8d54497743ffc1c0e1697981"

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
