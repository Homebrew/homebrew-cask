cask "font-convergence" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/convergence/Convergence-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Convergence"
  homepage "https://fonts.google.com/specimen/Convergence"

  font "Convergence-Regular.ttf"

  # No zap stanza required
end
