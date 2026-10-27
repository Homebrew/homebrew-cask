cask "font-butcherman" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/butcherman/Butcherman-Regular.ttf"
  name "Butcherman"
  homepage "https://fonts.google.com/specimen/Butcherman"

  font "Butcherman-Regular.ttf"

  zap :not_required
end
