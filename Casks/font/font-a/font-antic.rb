cask "font-antic" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/antic/Antic-Regular.ttf"
  name "Antic"
  homepage "https://fonts.google.com/specimen/Antic"

  font "Antic-Regular.ttf"

  zap :not_required
end
