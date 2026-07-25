cask "font-jua" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/jua/Jua-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Jua"
  homepage "https://fonts.google.com/specimen/Jua"

  font "Jua-Regular.ttf"

  # No zap stanza required
end
