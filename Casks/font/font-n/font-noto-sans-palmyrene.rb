cask "font-noto-sans-palmyrene" do
  version "2.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanspalmyrene/NotoSansPalmyrene-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Palmyrene"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Palmyrene"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Palmyrene",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansPalmyrene-Regular.ttf"

  # No zap stanza required
end
