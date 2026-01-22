cask "font-noto-sans-tagalog" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/pkgs/NotoSansTagalog-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Sans Tagalog"
  homepage "https://fonts.google.com/#sans-tglg"

  font "NotoSansTagalog-Regular.ttf"

  # No zap stanza required
end
