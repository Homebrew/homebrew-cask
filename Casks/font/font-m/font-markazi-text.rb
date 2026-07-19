cask "font-markazi-text" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/markazitextvfbeta/MarkaziText-VF.ttf",
      verified: "github.com/google/fonts/"
  name "Markazi Text"
  homepage "https://fonts.google.com/specimen/Markazi+Text"

  font "MarkaziText-VF.ttf"

  # No zap stanza required
end
