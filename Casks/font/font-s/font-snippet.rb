cask "font-snippet" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/snippet/Snippet.ttf",
      verified: "github.com/google/fonts/"
  name "Snippet"
  homepage "https://fonts.google.com/specimen/Snippet"

  font "Snippet.ttf"

  # No zap stanza required
end
