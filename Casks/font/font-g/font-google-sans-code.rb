cask "font-google-sans-code" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      branch:    "main",
      only_path: "ofl/googlesanscode"
  name "Google Sans Code"
  homepage "https://github.com/googlefonts/googlesans-code"

  font "GoogleSansCode-Italic[wght].ttf"
  font "GoogleSansCode[wght].ttf"

  # No zap stanza required
end
