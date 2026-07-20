cask "font-bad-script" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/badscript/BadScript-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Bad Script"
  homepage "https://fonts.google.com/specimen/Bad+Script"

  font "BadScript-Regular.ttf"

  # No zap stanza required
end
