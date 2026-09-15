cask "font-fraunces" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      branch:    "main",
      only_path: "ofl/fraunces"
  name "Fraunces"
  homepage "https://fonts.google.com/specimen/Fraunces"

  font "Fraunces-Italic[SOFT,WONK,opsz,wght].ttf"
  font "Fraunces[SOFT,WONK,opsz,wght].ttf"

  # No zap stanza required
end
