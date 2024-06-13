cask "font-micro-5" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/micro5/Micro5-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Micro 5"
  homepage "https://fonts.google.com/specimen/Micro+5"

  font "Micro5-Regular.ttf"

  # No zap stanza required
end
