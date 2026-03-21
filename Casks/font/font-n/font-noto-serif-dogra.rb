cask "font-noto-serif-dogra" do
  version "1.007"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notoserifdogra/NotoSerifDogra-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Serif Dogra"
  homepage "https://fonts.google.com/specimen/Noto+Serif+Dogra"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Serif Dogra",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSerifDogra-Regular.ttf"

  # No zap stanza required
end
