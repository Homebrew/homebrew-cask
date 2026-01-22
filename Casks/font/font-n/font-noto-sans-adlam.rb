cask "font-noto-sans-adlam" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/pkgs/NotoSansAdlam-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Sans Adlam"
  homepage "https://fonts.google.com/#sans-adlm"

  font "NotoSansAdlam-Regular.ttf"

  # No zap stanza required
end
