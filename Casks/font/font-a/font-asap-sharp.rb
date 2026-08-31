cask "font-asap-sharp" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/asapsharp"
  name "Asap Sharp"
  homepage "https://fonts.google.com/specimen/Asap+Sharp"

  font "AsapSharp-Italic[wdth,wght].ttf"
  font "AsapSharp[wdth,wght].ttf"

  # No zap stanza required
end
