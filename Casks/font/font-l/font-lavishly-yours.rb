cask "font-lavishly-yours" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/lavishlyyours/LavishlyYours-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Lavishly Yours"
  homepage "https://fonts.google.com/specimen/Lavishly+Yours"

  font "LavishlyYours-Regular.ttf"

  # No zap stanza required
end
