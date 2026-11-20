cask "font-ribeye" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/ribeye/Ribeye-Regular.ttf"
  name "Ribeye"
  homepage "https://fonts.google.com/specimen/Ribeye"

  font "Ribeye-Regular.ttf"

  zap :not_required
end
