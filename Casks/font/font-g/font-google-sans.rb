cask "font-google-sans" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      branch:    "main",
      only_path: "ofl/googlesans"
  name "Google Sans"
  homepage "https://fonts.google.com/specimen/Google+Sans"

  font "GoogleSans-Italic[GRAD,opsz,wght].ttf"
  font "GoogleSans[GRAD,opsz,wght].ttf"

  # No zap stanza required
end
