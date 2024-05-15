cask "font-passions-conflict" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/passionsconflict/PassionsConflict-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Passions Conflict"
  homepage "https://fonts.google.com/specimen/Passions+Conflict"

  font "PassionsConflict-Regular.ttf"

  # No zap stanza required
end
