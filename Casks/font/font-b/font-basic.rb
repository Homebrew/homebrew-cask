cask "font-basic" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/basic/Basic-Regular.ttf"
  name "Basic"
  homepage "https://fonts.google.com/specimen/Basic"

  font "Basic-Regular.ttf"

  zap :not_required
end
