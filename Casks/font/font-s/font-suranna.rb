cask "font-suranna" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/suranna/Suranna-Regular.ttf"
  name "Suranna"
  homepage "https://fonts.google.com/specimen/Suranna"

  font "Suranna-Regular.ttf"

  zap :not_required
end
