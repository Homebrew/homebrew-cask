cask "font-noto-sans-newa" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansnewa/NotoSansNewa-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Newa"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Newa"

  font "NotoSansNewa-Regular.ttf"

  # No zap stanza required
end
