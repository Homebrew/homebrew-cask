cask "font-rammetto-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/rammettoone/RammettoOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Rammetto One"
  homepage "https://fonts.google.com/specimen/Rammetto+One"

  font "RammettoOne-Regular.ttf"

  # No zap stanza required
end
