cask "font-grey-qo" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/greyqo/GreyQo-Regular.ttf"
  name "Grey Qo"
  homepage "https://fonts.google.com/specimen/Grey+Qo"

  font "GreyQo-Regular.ttf"

  zap :not_required
end
