cask "font-bbh-bogle" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/bbhbogle/BBHBogle-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "BBH Bogle"
  homepage "https://fonts.google.com/specimen/BBH+Bogle"

  font "BBHBogle-Regular.ttf"

  # No zap stanza required
end
