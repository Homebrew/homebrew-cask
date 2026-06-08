cask "font-aguafina-script" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/aguafinascript/AguafinaScript-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Aguafina Script"
  homepage "https://fonts.google.com/specimen/Aguafina+Script"

  font "AguafinaScript-Regular.ttf"

  # No zap stanza required
end
