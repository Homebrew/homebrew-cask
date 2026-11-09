cask "font-racing-sans-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/racingsansone/RacingSansOne-Regular.ttf"
  name "Racing Sans One"
  homepage "https://fonts.google.com/specimen/Racing+Sans+One"

  font "RacingSansOne-Regular.ttf"

  zap :not_required
end
