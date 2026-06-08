cask "font-mynerve" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/mynerve/Mynerve-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Mynerve"
  homepage "https://fonts.google.com/specimen/Mynerve"

  font "Mynerve-Regular.ttf"

  # No zap stanza required
end
