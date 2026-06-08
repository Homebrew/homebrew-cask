cask "font-lobster-two" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/lobstertwo"
  name "Lobster Two"
  homepage "https://fonts.google.com/specimen/Lobster+Two"

  font "LobsterTwo-Bold.ttf"
  font "LobsterTwo-BoldItalic.ttf"
  font "LobsterTwo-Italic.ttf"
  font "LobsterTwo-Regular.ttf"

  # No zap stanza required
end
