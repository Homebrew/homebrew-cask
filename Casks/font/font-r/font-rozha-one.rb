cask "font-rozha-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/rozhaone/RozhaOne-Regular.ttf"
  name "Rozha One"
  homepage "https://fonts.google.com/specimen/Rozha+One"

  font "RozhaOne-Regular.ttf"

  zap :not_required
end
