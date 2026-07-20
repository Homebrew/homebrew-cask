cask "font-akaya-kanadaka" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/akayakanadaka/AkayaKanadaka-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Akaya Kanadaka"
  homepage "https://fonts.google.com/specimen/Akaya+Kanadaka"

  font "AkayaKanadaka-Regular.ttf"

  # No zap stanza required
end
