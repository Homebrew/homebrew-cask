cask "font-schibsted-grotesk" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/schibstedgrotesk"
  name "Schibsted Grotesk"
  desc "Digital-first font family crafted for user interfaces"
  homepage "https://fonts.google.com/specimen/Schibsted+Grotesk"

  font "SchibstedGrotesk-Italic[wght].ttf"
  font "SchibstedGrotesk[wght].ttf"

  # No zap stanza required
end
