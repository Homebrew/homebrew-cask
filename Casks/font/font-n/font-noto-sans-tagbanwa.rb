cask "font-noto-sans-tagbanwa" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/pkgs/NotoSansTagbanwa-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Sans Tagbanwa"
  homepage "https://fonts.google.com/#sans-tagb"

  font "NotoSansTagbanwa-Regular.ttf"

  # No zap stanza required
end
