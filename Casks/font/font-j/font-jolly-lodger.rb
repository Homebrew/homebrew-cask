cask "font-jolly-lodger" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/jollylodger/JollyLodger-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Jolly Lodger"
  homepage "https://fonts.google.com/specimen/Jolly+Lodger"

  font "JollyLodger-Regular.ttf"

  # No zap stanza required
end
