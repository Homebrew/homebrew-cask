cask "font-rouge-script" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/rougescript/RougeScript-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Rouge Script"
  homepage "https://fonts.google.com/specimen/Rouge+Script"

  font "RougeScript-Regular.ttf"

  # No zap stanza required
end
