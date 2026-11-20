cask "font-single-day" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/singleday/SingleDay-Regular.ttf"
  name "Single Day"
  homepage "https://fonts.google.com/specimen/Single+Day"

  font "SingleDay-Regular.ttf"

  zap :not_required
end
