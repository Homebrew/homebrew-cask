cask "font-noto-sans-old-sogdian" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansoldsogdian/NotoSansOldSogdian-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Old Sogdian"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Old+Sogdian"

  font "NotoSansOldSogdian-Regular.ttf"

  # No zap stanza required
end
