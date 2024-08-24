cask "font-iosevka" do
  version "31.4.0"
  sha256 "6549747e63de7d1c89ad230911ac7bdc71a7a60a6479b4a74713af003a5a7496"

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
