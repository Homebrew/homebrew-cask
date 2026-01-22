cask "font-noto-sans-kharoshthi" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/pkgs/NotoSansKharoshthi-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Sans Kharoshthi"
  homepage "https://fonts.google.com/#sans-khar"

  font "NotoSansKharoshthi-Regular.ttf"

  # No zap stanza required
end
