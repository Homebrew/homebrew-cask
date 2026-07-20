cask "font-noto-sans-syloti-nagri" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanssylotinagri/NotoSansSylotiNagri-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Syloti Nagri"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Syloti+Nagri"

  font "NotoSansSylotiNagri-Regular.ttf"

  # No zap stanza required
end
