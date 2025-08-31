cask "font-iosevka" do
  version "33.2.9"
  sha256 "227d28c890f659e89e43031352ebc118e4c58314f561e3315106fb485afb46ab"

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
