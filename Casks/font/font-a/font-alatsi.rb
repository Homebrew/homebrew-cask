cask "font-alatsi" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/alatsi/Alatsi-Regular.ttf"
  name "Alatsi"
  homepage "https://fonts.google.com/specimen/Alatsi"

  font "Alatsi-Regular.ttf"

  zap :not_required
end
