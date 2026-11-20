cask "font-kristi" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/kristi/Kristi-Regular.ttf"
  name "Kristi"
  homepage "https://fonts.google.com/specimen/Kristi"

  font "Kristi-Regular.ttf"

  zap :not_required
end
