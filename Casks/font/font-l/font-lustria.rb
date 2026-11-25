cask "font-lustria" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/lustria/Lustria-Regular.ttf"
  name "Lustria"
  homepage "https://fonts.google.com/specimen/Lustria"

  font "Lustria-Regular.ttf"

  zap :not_required
end
