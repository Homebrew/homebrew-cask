cask "font-noto-sans-cypriot" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanscypriot/NotoSansCypriot-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Cypriot"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Cypriot"

  font "NotoSansCypriot-Regular.ttf"

  # No zap stanza required
end
