cask "font-noto-emoji" do
  version "3.005"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notoemoji/NotoEmoji%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Emoji"
  homepage "https://fonts.google.com/specimen/Noto+Emoji"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Emoji",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoEmoji[wght].ttf"

  # No zap stanza required
end
