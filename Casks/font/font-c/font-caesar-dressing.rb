cask "font-caesar-dressing" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/caesardressing/CaesarDressing-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Caesar Dressing"
  homepage "https://fonts.google.com/specimen/Caesar+Dressing"

  font "CaesarDressing-Regular.ttf"

  # No zap stanza required
end
