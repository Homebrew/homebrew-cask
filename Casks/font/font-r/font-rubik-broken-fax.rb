cask "font-rubik-broken-fax" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/rubikbrokenfax/RubikBrokenFax-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Rubik Broken Fax"
  homepage "https://fonts.google.com/specimen/Rubik+Broken+Fax"

  font "RubikBrokenFax-Regular.ttf"

  # No zap stanza required
end
