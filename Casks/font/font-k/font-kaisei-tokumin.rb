cask "font-kaisei-tokumin" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/kaiseitokumin"
  name "Kaisei Tokumin"
  homepage "https://fonts.google.com/specimen/Kaisei+Tokumin"

  font "KaiseiTokumin-Bold.ttf"
  font "KaiseiTokumin-ExtraBold.ttf"
  font "KaiseiTokumin-Medium.ttf"
  font "KaiseiTokumin-Regular.ttf"

  # No zap stanza required
end
