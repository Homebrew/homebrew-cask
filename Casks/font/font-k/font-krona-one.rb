cask "font-krona-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/kronaone/KronaOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Krona One"
  homepage "https://fonts.google.com/specimen/Krona+One"

  font "KronaOne-Regular.ttf"

  # No zap stanza required
end
