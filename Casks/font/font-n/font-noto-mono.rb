cask "font-noto-mono" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/pkgs/NotoMono-hinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Mono"
  homepage "https://fonts.google.com"

  font "NotoMono-Regular.ttf"

  # No zap stanza required
end
