cask "font-federo" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/federo/Federo-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Federo"
  homepage "https://fonts.google.com/specimen/Federo"

  font "Federo-Regular.ttf"

  # No zap stanza required
end
