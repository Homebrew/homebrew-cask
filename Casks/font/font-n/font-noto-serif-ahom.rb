cask "font-noto-serif-ahom" do
  version "2.007"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notoserifahom/NotoSerifAhom-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Serif Ahom"
  homepage "https://fonts.google.com/specimen/Noto+Serif+Ahom"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Serif Ahom",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSerifAhom-Regular.ttf"

  # No zap stanza required
end
