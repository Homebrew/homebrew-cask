cask "font-google-sans-code" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/googlesanscode"
  name "Google Sans Code"
  homepage "https://fonts.google.com/specimen/Google+Sans+Code"

  font "GoogleSansCode-Italic[wght].ttf"
  font "GoogleSansCode[wght].ttf"

  # No zap stanza required
end
