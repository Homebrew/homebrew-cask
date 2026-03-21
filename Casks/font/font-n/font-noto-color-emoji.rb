cask "font-noto-color-emoji" do
  version "2.051"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notocoloremoji/NotoColorEmoji-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Color Emoji"
  homepage "https://fonts.google.com/specimen/Noto+Color+Emoji"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Color Emoji",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoColorEmoji-Regular.ttf"

  # No zap stanza required
end
