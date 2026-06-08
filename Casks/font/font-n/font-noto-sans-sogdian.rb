cask "font-noto-sans-sogdian" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanssogdian/NotoSansSogdian-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Sogdian"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Sogdian"

  font "NotoSansSogdian-Regular.ttf"

  # No zap stanza required
end
