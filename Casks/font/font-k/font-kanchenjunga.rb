cask "font-kanchenjunga" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/kanchenjunga"
  name "Kanchenjunga"
  homepage "https://fonts.google.com/specimen/Kanchenjunga"

  font "Kanchenjunga-Bold.ttf"
  font "Kanchenjunga-Medium.ttf"
  font "Kanchenjunga-Regular.ttf"
  font "Kanchenjunga-SemiBold.ttf"

  # No zap stanza required
end
