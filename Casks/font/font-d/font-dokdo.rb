cask "font-dokdo" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/dokdo/Dokdo-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Dokdo"
  homepage "https://fonts.google.com/specimen/Dokdo"

  font "Dokdo-Regular.ttf"

  # No zap stanza required
end
