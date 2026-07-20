cask "font-hanken-grotesk" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/hankengrotesk"
  name "Hanken Grotesk"
  homepage "https://fonts.google.com/specimen/Hanken+Grotesk"

  font "HankenGrotesk-Italic[wght].ttf"
  font "HankenGrotesk[wght].ttf"

  # No zap stanza required
end
