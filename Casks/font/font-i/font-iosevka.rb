cask "font-iosevka" do
  version "33.2.5"
  sha256 "6239f2cf6fa421abc1455a74fcbb5380b7005c3da52e27b6e63728668607cf9f"

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
