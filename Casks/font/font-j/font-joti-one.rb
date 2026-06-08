cask "font-joti-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/jotione/JotiOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Joti One"
  homepage "https://fonts.google.com/specimen/Joti+One"

  font "JotiOne-Regular.ttf"

  # No zap stanza required
end
