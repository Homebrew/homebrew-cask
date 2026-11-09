cask "font-lavishly-yours" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/lavishlyyours/LavishlyYours-Regular.ttf"
  name "Lavishly Yours"
  homepage "https://fonts.google.com/specimen/Lavishly+Yours"

  font "LavishlyYours-Regular.ttf"

  zap :not_required
end
