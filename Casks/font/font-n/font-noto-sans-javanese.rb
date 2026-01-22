cask "font-noto-sans-javanese" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/pkgs/NotoSansJavanese-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Sans Javanese"
  homepage "https://fonts.google.com/#sans-java"

  font "NotoSansJavanese-Regular.ttf"

  # No zap stanza required
end
