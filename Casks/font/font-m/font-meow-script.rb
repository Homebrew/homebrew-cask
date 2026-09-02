cask "font-meow-script" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/meowscript/MeowScript-Regular.ttf"
  name "Meow Script"
  homepage "https://fonts.google.com/specimen/Meow+Script"

  font "MeowScript-Regular.ttf"

  # No zap stanza required
end
