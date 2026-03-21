cask "font-noto-serif-balinese" do
  version "2.007"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notoserifbalinese/NotoSerifBalinese-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Serif Balinese"
  homepage "https://fonts.google.com/specimen/Noto+Serif+Balinese"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Serif Balinese",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSerifBalinese-Regular.ttf"

  # No zap stanza required
end
