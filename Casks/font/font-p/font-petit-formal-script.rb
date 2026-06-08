cask "font-petit-formal-script" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/petitformalscript/PetitFormalScript-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Petit Formal Script"
  homepage "https://fonts.google.com/specimen/Petit+Formal+Script"

  font "PetitFormalScript-Regular.ttf"

  # No zap stanza required
end
