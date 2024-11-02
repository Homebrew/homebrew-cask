cask "font-iosevka" do
  version "32.0.0"
  sha256 "14aa988a9c6ee225b84ae6dc48774ab9fbe62969433633c6004397d7f472f6b8"

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
