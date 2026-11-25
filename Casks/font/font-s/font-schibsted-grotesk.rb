cask "font-schibsted-grotesk" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      branch:    "main",
      only_path: "ofl/schibstedgrotesk"
  name "Schibsted Grotesk"
  homepage "https://fonts.google.com/specimen/Schibsted+Grotesk"

  font "SchibstedGrotesk-Italic[wght].ttf"
  font "SchibstedGrotesk[wght].ttf"

  zap :not_required
end
