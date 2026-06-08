cask "font-architects-daughter" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/architectsdaughter/ArchitectsDaughter-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Architects Daughter"
  homepage "https://fonts.google.com/specimen/Architects+Daughter"

  font "ArchitectsDaughter-Regular.ttf"

  # No zap stanza required
end
