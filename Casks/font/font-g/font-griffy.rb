cask "font-griffy" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/griffy/Griffy-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Griffy"
  homepage "https://fonts.google.com/specimen/Griffy"

  font "Griffy-Regular.ttf"

  # No zap stanza required
end
