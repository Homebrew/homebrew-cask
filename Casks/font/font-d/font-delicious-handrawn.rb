cask "font-delicious-handrawn" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/delicioushandrawn/DeliciousHandrawn-Regular.ttf"
  name "Delicious Handrawn"
  homepage "https://fonts.google.com/specimen/Delicious+Handrawn"

  font "DeliciousHandrawn-Regular.ttf"

  zap :not_required
end
