cask "font-koulen" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/koulen/Koulen-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Koulen"
  homepage "https://fonts.google.com/specimen/Koulen"

  font "Koulen-Regular.ttf"

  # No zap stanza required
end
