cask "font-lohit-tamil" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/lohittamil/Lohit-Tamil.ttf",
      verified: "github.com/google/fonts/"
  name "Lohit Tamil"
  homepage "https://fonts.google.com/specimen/Lohit+Tamil"

  font "Lohit-Tamil.ttf"

  # No zap stanza required
end
