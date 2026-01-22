cask "font-noto-sans-cypriot" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/pkgs/NotoSansCypriot-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Sans Cypriot"
  homepage "https://fonts.google.com/#sans-cprt"

  font "NotoSansCypriot-Regular.ttf"

  # No zap stanza required
end
