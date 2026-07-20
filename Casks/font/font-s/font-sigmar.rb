cask "font-sigmar" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/sigmar/Sigmar-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Sigmar"
  homepage "https://fonts.google.com/specimen/Sigmar"

  font "Sigmar-Regular.ttf"

  # No zap stanza required
end
