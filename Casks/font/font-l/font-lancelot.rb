cask "font-lancelot" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/lancelot/Lancelot-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Lancelot"
  homepage "https://fonts.google.com/specimen/Lancelot"

  font "Lancelot-Regular.ttf"

  # No zap stanza required
end
