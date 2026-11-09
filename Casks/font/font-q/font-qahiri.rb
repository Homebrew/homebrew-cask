cask "font-qahiri" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/qahiri/Qahiri-Regular.ttf"
  name "Qahiri"
  homepage "https://fonts.google.com/specimen/Qahiri"

  font "Qahiri-Regular.ttf"

  zap :not_required
end
