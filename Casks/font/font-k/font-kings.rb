cask "font-kings" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/kings/Kings-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Kings"
  desc "Based on the three set font family (kings honor, kings quest and kings dominion)"
  homepage "https://fonts.google.com/specimen/Kings"

  font "Kings-Regular.ttf"

  # No zap stanza required
end
