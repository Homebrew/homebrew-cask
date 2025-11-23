cask "font-khyay" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/khyay/Khyay-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Khyay"
  homepage "https://fonts.google.com/earlyaccess"

  font "Khyay-Regular.ttf"

  # No zap stanza required
end
