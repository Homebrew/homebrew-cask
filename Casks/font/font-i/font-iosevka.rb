cask "font-iosevka" do
  version "32.3.1"
  sha256 "b78b9a3331dd50cab0d463cdde9bc0a079ddc4320cea5b978d07a93752526b58"

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
