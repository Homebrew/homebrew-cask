cask "font-chela-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/chelaone/ChelaOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Chela One"
  homepage "https://fonts.google.com/specimen/Chela+One"

  font "ChelaOne-Regular.ttf"

  # No zap stanza required
end
