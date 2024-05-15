cask "font-girassol" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/girassol/Girassol-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Girassol"
  homepage "https://fonts.google.com/specimen/Girassol"

  font "Girassol-Regular.ttf"

  # No zap stanza required
end
