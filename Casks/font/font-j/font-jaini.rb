cask "font-jaini" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/jaini/Jaini-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Jaini"
  homepage "https://fonts.google.com/specimen/Jaini"

  font "Jaini-Regular.ttf"

  # No zap stanza required
end
