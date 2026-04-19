cask "font-iosevka" do
  version "34.4.0"
  sha256 "24f7c8e6f874037aa51d6e9d2970755417cff5a845750e650251230d513b4b27"

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
