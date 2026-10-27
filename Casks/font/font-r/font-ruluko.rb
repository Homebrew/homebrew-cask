cask "font-ruluko" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/ruluko/Ruluko-Regular.ttf"
  name "Ruluko"
  homepage "https://fonts.google.com/specimen/Ruluko"

  font "Ruluko-Regular.ttf"

  zap :not_required
end
