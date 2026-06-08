cask "font-aldrich" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/aldrich/Aldrich-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Aldrich"
  homepage "https://fonts.google.com/specimen/Aldrich"

  font "Aldrich-Regular.ttf"

  # No zap stanza required
end
