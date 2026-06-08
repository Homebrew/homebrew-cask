cask "font-noto-sans-elbasan" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanselbasan/NotoSansElbasan-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Elbasan"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Elbasan"

  font "NotoSansElbasan-Regular.ttf"

  # No zap stanza required
end
