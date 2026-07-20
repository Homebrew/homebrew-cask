cask "font-gloock" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/gloock/Gloock-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Gloock"
  homepage "https://fonts.google.com/specimen/Gloock"

  font "Gloock-Regular.ttf"

  # No zap stanza required
end
