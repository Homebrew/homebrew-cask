cask "font-togalite" do
  version :latest
  sha256 :no_check

  url "https://moji-waku.com/download/togalite.zip"
  name "Togalite"
  homepage "https://moji-waku.com/togalite/index.html"

  font "togalite/togalite-black.otf"
  font "togalite/togalite-bold.otf"
  font "togalite/togalite-heavy.otf"
  font "togalite/togalite-light.otf"
  font "togalite/togalite-medium.otf"
  font "togalite/togalite-regular.otf"

  # No zap stanza required
end
