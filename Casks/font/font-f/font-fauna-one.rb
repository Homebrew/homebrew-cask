cask "font-fauna-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/faunaone/FaunaOne-Regular.ttf"
  name "Fauna One"
  homepage "https://fonts.google.com/specimen/Fauna+One"

  font "FaunaOne-Regular.ttf"

  zap :not_required
end
