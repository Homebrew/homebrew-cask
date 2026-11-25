cask "font-snippet" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/snippet/Snippet.ttf"
  name "Snippet"
  homepage "https://fonts.google.com/specimen/Snippet"

  font "Snippet.ttf"

  zap :not_required
end
