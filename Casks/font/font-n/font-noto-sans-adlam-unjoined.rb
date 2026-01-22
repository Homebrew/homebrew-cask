cask "font-noto-sans-adlam-unjoined" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/pkgs/NotoSansAdlamUnjoined-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Sans Adlam Unjoined"
  homepage "https://font.google.com"

  font "NotoSansAdlamUnjoined-Regular.ttf"

  # No zap stanza required
end
