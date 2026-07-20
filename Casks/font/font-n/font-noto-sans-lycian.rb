cask "font-noto-sans-lycian" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanslycian/NotoSansLycian-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Lycian"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Lycian"

  font "NotoSansLycian-Regular.ttf"

  # No zap stanza required
end
