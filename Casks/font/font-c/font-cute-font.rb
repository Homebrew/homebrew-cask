cask "font-cute-font" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/cutefont/CuteFont-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Cute Font"
  homepage "https://fonts.google.com/specimen/Cute+Font"

  font "CuteFont-Regular.ttf"

  # No zap stanza required
end
