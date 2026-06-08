cask "font-noto-sans-linear-a" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanslineara/NotoSansLinearA-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Linear A"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Linear+A"

  font "NotoSansLinearA-Regular.ttf"

  # No zap stanza required
end
