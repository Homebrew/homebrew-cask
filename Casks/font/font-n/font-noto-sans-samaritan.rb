cask "font-noto-sans-samaritan" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanssamaritan/NotoSansSamaritan-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Samaritan"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Samaritan"

  font "NotoSansSamaritan-Regular.ttf"

  # No zap stanza required
end
