cask "font-rubik-iso" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/rubikiso/RubikIso-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Rubik Iso"
  homepage "https://fonts.google.com/specimen/Rubik+Iso"

  font "RubikIso-Regular.ttf"

  # No zap stanza required
end
