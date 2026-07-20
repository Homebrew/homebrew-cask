cask "font-im-fell-english" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/imfellenglish"
  name "IM Fell English"
  homepage "https://fonts.google.com/specimen/IM+Fell+English"

  font "IMFeENit28P.ttf"
  font "IMFeENrm28P.ttf"

  # No zap stanza required
end
