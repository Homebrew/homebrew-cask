cask "font-akaya-kanadaka" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/akayakanadaka/AkayaKanadaka-Regular.ttf"
  name "Akaya Kanadaka"
  homepage "https://fonts.google.com/specimen/Akaya+Kanadaka"

  font "AkayaKanadaka-Regular.ttf"

  zap :not_required
end
