cask "font-noto-sans-linear-b" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanslinearb/NotoSansLinearB-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Linear B"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Linear+B"

  font "NotoSansLinearB-Regular.ttf"

  # No zap stanza required
end
