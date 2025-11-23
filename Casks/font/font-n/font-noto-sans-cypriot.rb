cask "font-noto-sans-cypriot" do
  version :latest
  sha256 :no_check

  url "https://noto-website-2.storage.googleapis.com/pkgs/NotoSansCypriot-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Sans Cypriot"
  homepage "https://www.google.com/get/noto/#sans-cprt"

  font "NotoSansCypriot-Regular.ttf"

  # No zap stanza required
end
