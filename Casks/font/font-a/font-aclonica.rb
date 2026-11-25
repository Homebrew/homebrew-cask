cask "font-aclonica" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/apache/aclonica/Aclonica-Regular.ttf"
  name "Aclonica"
  homepage "https://fonts.google.com/specimen/Aclonica"

  font "Aclonica-Regular.ttf"

  zap :not_required
end
