cask "font-togalite" do
  version "2.0"
  sha256 :no_check

  url "https://moji-waku.com/download/togalite.zip"
  name "Togalite"
  name "トガリテ"
  homepage "https://moji-waku.com/togalite/index.html"

  livecheck do
    url :homepage
    regex(/トガリテ\s+VER\s+v?(\d+(?:\.\d+)+)/i)
  end

  font "togalite/Togalite-Black.otf"
  font "togalite/Togalite-Bold.otf"
  font "togalite/Togalite-Heavy.otf"
  font "togalite/Togalite-Light.otf"
  font "togalite/Togalite-Medium.otf"
  font "togalite/Togalite-Regular.otf"
  font "togalite/Togalite-Thin.otf"

  # No zap stanza required
end
