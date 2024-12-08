cask "font-kanchenjunga" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      branch:    "main",
      only_path: "ofl/kanchenjunga"
  name "Kanchenjunga"
  homepage "https://github.com/silnrsi/font-kanchenjunga/"

  font "Kanchenjunga-Bold.ttf"
  font "Kanchenjunga-Medium.ttf"
  font "Kanchenjunga-Regular.ttf"
  font "Kanchenjunga-SemiBold.ttf"

  # No zap stanza required
end
