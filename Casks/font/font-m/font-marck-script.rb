cask "font-marck-script" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/marckscript/MarckScript-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Marck Script"
  homepage "https://fonts.google.com/specimen/Marck+Script"

  font "MarckScript-Regular.ttf"

  # No zap stanza required
end
