cask "font-kiwi-maru" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/kiwimaru"
  name "Kiwi Maru"
  homepage "https://fonts.google.com/specimen/Kiwi+Maru"

  font "KiwiMaru-Light.ttf"
  font "KiwiMaru-Medium.ttf"
  font "KiwiMaru-Regular.ttf"

  # No zap stanza required
end
