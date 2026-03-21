cask "font-noto-serif-ottoman-siyaq" do
  version "1.006"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notoserifottomansiyaq/NotoSerifOttomanSiyaq-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Serif Ottoman Siyaq"
  homepage "https://fonts.google.com/specimen/Noto+Serif+Ottoman+Siyaq"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Serif Ottoman Siyaq",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSerifOttomanSiyaq-Regular.ttf"

  # No zap stanza required
end
