cask "font-hina-mincho" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/hinamincho/HinaMincho-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Hina Mincho"
  homepage "https://fonts.google.com/specimen/Hina+Mincho"

  font "HinaMincho-Regular.ttf"

  # No zap stanza required
end
