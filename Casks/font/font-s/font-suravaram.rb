cask "font-suravaram" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/suravaram/Suravaram-Regular.ttf"
  name "Suravaram"
  homepage "https://fonts.google.com/specimen/Suravaram"

  font "Suravaram-Regular.ttf"

  zap :not_required
end
