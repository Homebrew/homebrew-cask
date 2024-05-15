cask "font-grechen-fuemen" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/grechenfuemen/GrechenFuemen-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Grechen Fuemen"
  desc "Playful font with an unorthodox use of thick and thin weights"
  homepage "https://fonts.google.com/specimen/Grechen+Fuemen"

  font "GrechenFuemen-Regular.ttf"

  # No zap stanza required
end
