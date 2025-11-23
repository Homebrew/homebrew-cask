cask "font-mr-bedfort" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/mrbedfort/MrBedfort-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Mr Bedfort"
  homepage "https://fonts.google.com/specimen/Mr+Bedfort"

  font "MrBedfort-Regular.ttf"

  # No zap stanza required
end
