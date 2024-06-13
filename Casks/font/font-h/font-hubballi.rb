cask "font-hubballi" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/hubballi/Hubballi-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Hubballi"
  homepage "https://fonts.google.com/specimen/Hubballi"

  font "Hubballi-Regular.ttf"

  # No zap stanza required
end
