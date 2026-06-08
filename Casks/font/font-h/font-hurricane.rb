cask "font-hurricane" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/hurricane/Hurricane-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Hurricane"
  homepage "https://fonts.google.com/specimen/Hurricane"

  font "Hurricane-Regular.ttf"

  # No zap stanza required
end
