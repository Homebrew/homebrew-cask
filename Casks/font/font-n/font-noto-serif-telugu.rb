cask "font-noto-serif-telugu" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/pkgs/NotoSerifTelugu-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Serif Telugu"
  homepage "https://fonts.google.com/#serif-telu"

  font "NotoSerifTelugu-Bold.ttf"
  font "NotoSerifTelugu-Regular.ttf"

  # No zap stanza required
end
