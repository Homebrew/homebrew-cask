cask "font-mako" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/mako/Mako-Regular.ttf"
  name "Mako"
  homepage "https://fonts.google.com/specimen/Mako"

  font "Mako-Regular.ttf"

  zap :not_required
end
