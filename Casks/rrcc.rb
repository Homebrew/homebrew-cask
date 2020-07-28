cask "rrcc" do
  version "0.8.8"
  sha256 "7c1a657544eb026aeef679d796d2032fb5cd83eadc26f8bf784c59702bcb434e"

  url "https://github.com/LazyT/rrcc/releases/download/#{version}/rrcc-#{version.no_dots}.dmg"
  appcast "https://github.com/LazyT/rrcc/releases.atom"
  name "RoboRock Control Center"
  homepage "https://github.com/LazyT/rrcc"

  app "rrcc.app"

  zap trash: "~/Library/Saved Application State/com.yourcompany.rrcc.savedState"
end
