cask "font-noto-sans-sunuwar" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanssunuwar/NotoSansSunuwar-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Sunuwar"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Sunuwar"

  font "NotoSansSunuwar-Regular.ttf"

  # No zap stanza required
end
