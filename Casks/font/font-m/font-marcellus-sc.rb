cask "font-marcellus-sc" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/marcellussc/MarcellusSC-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Marcellus SC"
  homepage "https://fonts.google.com/specimen/Marcellus+SC"

  font "MarcellusSC-Regular.ttf"

  # No zap stanza required
end
