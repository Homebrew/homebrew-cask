cask "font-kirang-haerang" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/kiranghaerang/KirangHaerang-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Kirang Haerang"
  homepage "https://fonts.google.com/specimen/Kirang+Haerang"

  font "KirangHaerang-Regular.ttf"

  # No zap stanza required
end
