cask "font-gajraj-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/gajrajone/GajrajOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Gajraj One"
  homepage "https://fonts.google.com/specimen/Gajraj+One"

  font "GajrajOne-Regular.ttf"

  # No zap stanza required
end
