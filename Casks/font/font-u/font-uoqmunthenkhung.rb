cask "font-uoqmunthenkhung" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/uoqmunthenkhung/UoqMunThenKhung-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "UoqMunThenKhung"
  homepage "https://fonts.google.com/specimen/UoqMunThenKhung"

  font "UoqMunThenKhung-Regular.ttf"

  # No zap stanza required
end
