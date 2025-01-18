cask "font-iosevka" do
  version "32.4.0"
  sha256 "d421439194d76f2cbb9ed8f9e022f7e7be6ea318534326ba6edaa9af6a78ce7a"

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
