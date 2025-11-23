cask "font-noto-sans-modi" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansmodi/NotoSansModi-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Modi"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Modi"

  font "NotoSansModi-Regular.ttf"

  # No zap stanza required
end
