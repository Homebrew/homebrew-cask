cask "font-parisienne" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/parisienne/Parisienne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Parisienne"
  homepage "https://fonts.google.com/specimen/Parisienne"

  font "Parisienne-Regular.ttf"

  # No zap stanza required
end
