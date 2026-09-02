cask "font-meie-script" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/meiescript/MeieScript-Regular.ttf"
  name "Meie Script"
  homepage "https://fonts.google.com/specimen/Meie+Script"

  font "MeieScript-Regular.ttf"

  # No zap stanza required
end
