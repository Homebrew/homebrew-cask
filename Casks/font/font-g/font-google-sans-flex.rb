cask "font-google-sans-flex" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/googlesansflex/GoogleSansFlex%5BROND%2Copsz%2Cslnt%2Cwdth%2Cwght%5D.ttf"
  name "Google Sans Flex"
  homepage "https://fonts.google.com/specimen/Google+Sans+Flex"

  font "GoogleSansFlex[ROND,opsz,slnt,wdth,wght].ttf"

  zap :not_required
end
