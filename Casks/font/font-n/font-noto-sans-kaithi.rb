cask "font-noto-sans-kaithi" do
  version :latest
  sha256 :no_check

  url "https://noto-website-2.storage.googleapis.com/pkgs/NotoSansKaithi-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Sans Kaithi"
  homepage "https://fonts.google.com/#sans-kthi"

  font "NotoSansKaithi-Regular.ttf"

  # No zap stanza required
end
