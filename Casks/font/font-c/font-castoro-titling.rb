cask "font-castoro-titling" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/castorotitling/CastoroTitling-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Castoro Titling"
  homepage "https://fonts.google.com/specimen/Castoro+Titling"

  font "CastoroTitling-Regular.ttf"

  # No zap stanza required
end
