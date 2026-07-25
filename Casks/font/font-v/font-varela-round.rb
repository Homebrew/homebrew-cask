cask "font-varela-round" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/varelaround/VarelaRound-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Varela Round"
  homepage "https://fonts.google.com/specimen/Varela+Round"

  font "VarelaRound-Regular.ttf"

  # No zap stanza required
end
