cask "font-text-me-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/textmeone/TextMeOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Text Me One"
  homepage "https://fonts.google.com/specimen/Text+Me+One"

  font "TextMeOne-Regular.ttf"

  # No zap stanza required
end
