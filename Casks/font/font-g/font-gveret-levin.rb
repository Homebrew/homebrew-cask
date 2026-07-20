cask "font-gveret-levin" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/gveretlevin/GveretLevin-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Gveret Levin"
  homepage "https://fonts.google.com/specimen/Gveret+Levin"

  font "GveretLevin-Regular.ttf"

  # No zap stanza required
end
