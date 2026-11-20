cask "font-schoolbell" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/apache/schoolbell/Schoolbell-Regular.ttf"
  name "Schoolbell"
  homepage "https://fonts.google.com/specimen/Schoolbell"

  font "Schoolbell-Regular.ttf"

  zap :not_required
end
