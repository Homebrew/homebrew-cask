cask "font-noto-sans-lepcha" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/pkgs/NotoSansLepcha-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Sans Lepcha"
  homepage "https://fonts.google.com/#sans-lepc"

  font "NotoSansLepcha-Regular.ttf"

  # No zap stanza required
end
