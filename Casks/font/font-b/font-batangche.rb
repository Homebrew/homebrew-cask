cask "font-batangche" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/batangche/BatangChe-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "BatangChe"
  homepage "https://fonts.google.com/specimen/BatangChe"

  font "BatangChe-Regular.ttf"

  # No zap stanza required
end
