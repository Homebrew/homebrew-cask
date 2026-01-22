cask "font-noto-sans-gothic" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/pkgs/NotoSansGothic-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Sans Gothic"
  homepage "https://fonts.google.com/#sans-goth"

  font "NotoSansGothic-Regular.ttf"

  # No zap stanza required
end
