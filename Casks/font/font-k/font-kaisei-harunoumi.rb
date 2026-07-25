cask "font-kaisei-harunoumi" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/kaiseiharunoumi"
  name "Kaisei HarunoUmi"
  homepage "https://fonts.google.com/specimen/Kaisei+HarunoUmi"

  font "KaiseiHarunoUmi-Bold.ttf"
  font "KaiseiHarunoUmi-Medium.ttf"
  font "KaiseiHarunoUmi-Regular.ttf"

  # No zap stanza required
end
