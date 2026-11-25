cask "font-jockey-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/jockeyone/JockeyOne-Regular.ttf"
  name "Jockey One"
  homepage "https://fonts.google.com/specimen/Jockey+One"

  font "JockeyOne-Regular.ttf"

  zap :not_required
end
