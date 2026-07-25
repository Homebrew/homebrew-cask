cask "font-passero-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/passeroone/PasseroOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Passero One"
  homepage "https://fonts.google.com/specimen/Passero+One"

  font "PasseroOne-Regular.ttf"

  # No zap stanza required
end
