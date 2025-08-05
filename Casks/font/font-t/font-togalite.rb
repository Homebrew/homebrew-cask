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

  font "togalite/togalite-black.otf"
  font "togalite/togalite-bold.otf"
  font "togalite/togalite-heavy.otf"
  font "togalite/togalite-light.otf"
  font "togalite/togalite-medium.otf"
  font "togalite/togalite-regular.otf"

  # No zap stanza required
end
